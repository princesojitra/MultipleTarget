//
//  AppDelegate.swift
//  Demo
//
//  Created by Prince Sojitra on 25/07/20.
//  Copyright © 2020 Prince Sojitra. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        #if DEVELOPMENT
        let SERVER_URL = "http://dev.server.com/api/"
        print(SERVER_URL)
        #elseif STAGING
        let SERVER_URL = "http://staging.server.com/api/"
        print(SERVER_URL)
        #elseif PRODUCTION
        let SERVER_URL = "http://prod.server.com/api/"
        print(SERVER_URL)
        #endif
        
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


}

