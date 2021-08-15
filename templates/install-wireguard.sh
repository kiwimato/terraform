#!/bin/bash -v
apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -o Dpkg::Options::="--force-confnew"
apt-get install -y wireguard-dkms wireguard-tools awscli

IP="$(curl -ksv showip.net)"
NUMBER_OF_CLIENTS=2
SERVER_PRIVATE_KEY="$(wg genkey)"
SERVER_PUBLIC_KEY="$(echo -n $SERVER_PRIVATE_KEY | wg pubkey)"

for number in $(seq 0 $NUMBER_OF_CLIENTS);do
    CLIENT_CONFIG+="
#######################################
[Interface]
PrivateKey=$(wg genkey | tee /tmp/a)
Address=10.7.0.$((2+$number))
DNS=8.8.8.8

[Peer]
#vpn server
PublicKey=$SERVER_PUBLIC_KEY
Endpoint=$IP:51888
AllowedIPs=0.0.0.0/0
########################################

"

    PEERS+="
[Peer]
PublicKey=$(cat /tmp/a | wg pubkey)
AllowedIPs=10.7.0.$((2+$number))
"
done

cat > /etc/wireguard/wg0.conf <<- EOF
[Interface]
Address = 10.7.0.1
PrivateKey = $SERVER_PRIVATE_KEY
#PublicKey = $SERVER_PUBLIC_KEY
ListenPort = 51888
PostUp   = iptables -t nat -A POSTROUTING -s 10.7.0.0/24 -o eth0 -j MASQUERADE
PostDown = iptables -t nat -D POSTROUTING -s 10.7.0.0/24 -o eth0 -j MASQUERADE

${PEERS}
EOF

rm -rf /tmp/a

chown -R root:root /etc/wireguard/
chmod -R og-rwx /etc/wireguard/*
sed -i 's/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=1/' /etc/sysctl.conf
sysctl -p

ufw allow ssh
ufw allow 51888/udp
ufw --force enable

systemctl enable wg-quick@wg0.service
systemctl start wg-quick@wg0.service


echo "CURRENT IP:"
cat /etc/wireguard/wg0.conf
echo "----------------------"
echo "$CLIENT_CONFIG" | tee clients.conf
