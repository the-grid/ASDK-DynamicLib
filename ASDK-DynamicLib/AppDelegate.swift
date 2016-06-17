//
//  AppDelegate.swift
//  ASDK-DynamicLib
//
//  Created by Nicholas Velloff on 6/17/16.
//  Copyright © 2016 The Grid. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window.backgroundColor = UIColor.whiteColor()
        window.rootViewController = ViewController()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }
    
}