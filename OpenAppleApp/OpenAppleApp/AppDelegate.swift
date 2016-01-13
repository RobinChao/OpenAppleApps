//
//  AppDelegate.swift
//  OpenAppleApp
//
//  Created by Robin on 1/13/16.
//  Copyright © 2016 Robin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? 

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        let tableController = TableViewController()
        let navigationController = UINavigationController(rootViewController: tableController)
        
        window?.rootViewController = navigationController
        
        window?.makeKeyAndVisible()
        return true
    } 

}

