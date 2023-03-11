terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "2.11.0"
    }
  }
  required_version = ">= 0.13"
}

//## Then add an object detector
//darknet:
//  object_detector:
//    cameras:
//      camera_1:  # Attach detector to the configured camera_1 above
//        fps: 1
//        scan_on_motion_only: true
//        labels:
//          - label: person
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: car
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: motorbike
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bicycle
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: knife
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bus
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: cow
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: dog
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bird
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//      camera_2:  # Attach detector to the configured camera_1 above
//        fps: 1
//        scan_on_motion_only: true
//        labels:
//          - label: person
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: car
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: motorbike
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bicycle
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: knife
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bus
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: cow
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: dog
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bird
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//
//      camera_3:
//        fps: 1
//        scan_on_motion_only: true
//        labels:
//          - label: person
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: car
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: motorbike
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bicycle
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: knife
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bus
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: cow
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: dog
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bird
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//      camera_4:
//        fps: 1
//        scan_on_motion_only: true
//        labels:
//          - label: person
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: car
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: motorbike
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bicycle
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: knife
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bus
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: cow
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: dog
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bird
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//
//      camera_5:
//        fps: 1
//        scan_on_motion_only: true
//        labels:
//          - label: person
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: car
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: motorbike
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bicycle
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: knife
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bus
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: cow
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: dog
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bird
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//
//      camera_6:
//        fps: 1
//        scan_on_motion_only: true
//        labels:
//          - label: person
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: car
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: motorbike
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bicycle
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: knife
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bus
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: cow
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: dog
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//          - label: bird
//            confidence: 0.75
//            trigger_recorder: true
//            require_motion: true
//




