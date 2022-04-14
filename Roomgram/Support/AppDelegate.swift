//
//  AppDelegate.swift
//  Roomgram
//
//  Created by demasek on 28.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
//    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
//        /*
//         <scheme>://<host>
//         starbucks://home
//         starbucks://scan
//         */
//        
//        // Process the URL.
//        guard let components = NSURLComponents(url: url, resolvingAgainstBaseURL: true),
//              let host = components.host else {
//                  print("Invalid URL")
//                  return false
//              }
//        
//        print("components: \(components)")
//        
//        // Create the deep link
//        guard let deepLink = DeepLink(rawValue: host) else {
//            print("Deeplink not found: \(host)")
//            return false
//        }
//        
//        // Hand off to PageViewController
//        PageViewController.handleDeepLink(deepLink)
//        
//        return true
//    }
    

}

