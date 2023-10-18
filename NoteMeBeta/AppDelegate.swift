//
//  AppDelegate.swift
//  NoteMeBeta
//
//  Created by George Popkich on 18.10.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = PresentVC()
        window?.makeKeyAndVisible()
        
        
        return true
    }

   

}

