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

let roomCapacities: [Int: Int] = [
    201: 40,
    202: 50,
    203: 70,
    204: 20,
    215: 30,
    230: 80,
    240: 35,
    260: 60
]

func getRoomCapacitiesForAllSpeakers() -> [String: Int] {
    var roomCapacityBySpeaker = [String: Int]()
    for (speaker, roomAssignment) in roomAssignments {
        if let roomCapacity = roomCapacities[roomAssignment] {
            roomCapacityBySpeaker[speaker] = roomCapacity
        }
    }
    return roomCapacityBySpeaker
}

func audienceSizesForSpeakers(speakers: [String]) -> [String] {
    let roomCapacityBySpeaker = getRoomCapacitiesForAllSpeakers()
    var audeinceSizeForSpeaker = ""
    var audienceSizesBySpeakers = [String]()
    for speaker in speakers {
        if let roomCapacity = roomCapacityBySpeaker[speaker] {
            audeinceSizeForSpeaker = "\(speaker) can speak to up to \(roomCapacity) people."
        } else {
            audeinceSizeForSpeaker = "Room information not found for \(speaker)"
        }
        audienceSizesBySpeakers.append(audeinceSizeForSpeaker)
    }
    return audienceSizesBySpeakers
}
