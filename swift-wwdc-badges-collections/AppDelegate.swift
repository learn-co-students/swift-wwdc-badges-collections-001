//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        

        let speakers = [
            "Anita Borg",
            "Alan Kay",
            "Ada Lovelace",
            "Aaron Swartz",
            "Alan Turing",
            "Michael Faraday",
            "Grace Hopper",
            "Charles Babbage"
        ]
        
        
        print(badgeForSpeaker(speakers[0]))
        print(badgeForSpeaker(speakers[4]))
        print(badgesForSpeakers([]))
        print(badgesForSpeakers([speakers[0]]))
        print(badgesForSpeakers(speakers))
        print(roomAssignmentsForSpeakers([]))
        print(roomAssignmentsForSpeakers([speakers[0]]))
        print(roomAssignmentsForSpeakers(speakers))
        print(getRoomCapacitiesForAllSpeakers())
        // do not alter
        return true  //
    }   //////////////
}       /////////////

