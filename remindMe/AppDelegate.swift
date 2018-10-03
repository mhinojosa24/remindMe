//
//  AppDelegate.swift
//  remindMe
//
//  Created by Yves Songolo on 9/14/18.
//  Copyright © 2018 Yves Songolo. All rights reserved.
//

import UIKit
import Firebase
import CoreLocation
import JLocationKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
   
    var window: UIWindow?
    class var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
   // lazy var locationManager : CLLocationManager = CLLocationManager()
    var locationManager: CLLocationManager = CLLocationManager()
   
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // configure firebase
         //location.requestAccess = .requestAlwaysAuthorization //default is .requestAlwaysAuthorization
         FirebaseApp.configure()
        
        //locationManager = CLLocationManager()
        if (CLLocationManager.locationServicesEnabled())
        {
            self.locationManager = CLLocationManager()
            //self.locationManager.delegate = self
            self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
            self.locationManager.requestAlwaysAuthorization()
            self.locationManager.startUpdatingLocation()
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

