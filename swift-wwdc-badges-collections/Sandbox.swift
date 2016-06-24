//  Sandbox.swift

import Foundation

func badgeForSpeaker(speaker: String) -> String {
    let badgeText = "Hello, my name is \(speaker)."
    return badgeText
}

func badgesForSpeakers(speakers: [String]) -> [String] {
    if speakers.count > 0 {
        var speakerBadges = [String]()
        for speaker in speakers {
            let badge = "Hello my name is \(speaker)"
            speakerBadges.append(badge)
        }
        return speakerBadges
    } else {
        return speakers
    }
}

let roomAssignments: [String: Int] = [
    "Anita Borg": 201,
    "Alan Kay": 202,
    "Ada Lovelace": 203,
    "Aaron Swartz": 215,
    "Alan Turing": 204,
    "Michael Faraday": 205,
    "Grace Hopper": 230
]

func roomAssignmentsForSpeakers(speakers: [String]) -> [String] {
    var speakerRoomAssignments = [String]()
    for speaker in speakers {
        var roomAssignment = ""
        if let room = roomAssignments[speaker] {
           roomAssignment = "\(speaker) will be speaking in Room \(room)"
        } else {
            roomAssignment = "\(speaker) has not been assigned to a room."
        }
        speakerRoomAssignments.append(roomAssignment)
    }
    return speakerRoomAssignments
}