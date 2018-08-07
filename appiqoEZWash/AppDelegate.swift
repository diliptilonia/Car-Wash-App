//
//  AppDelegate.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 02/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
//
//    private func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
//
//
//        if UserDefaults.standard.bool(forKey: "pageVC") == true{
//          let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let exampleVC = mainStoryboard.instantiateViewController(withIdentifier: "logInVC") as! ViewController
//            let navigationController = UINavigationController(rootViewController: exampleVC)
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//            self.window!.rootViewController = navigationController
//            self.window!.makeKeyAndVisible()
//
//
//        } else
//        {
//            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//            let exampleVC = mainStoryboard.instantiateViewController(withIdentifier: "pageVC") as! pageVC
//            let pageViewCOntroller = UINavigationController(rootViewController: exampleVC)
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//            self.window?.rootViewController = pageViewCOntroller
//            self.window?.makeKeyAndVisible()
//                    }
//        if let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "launchedScreenDelay") as? launchedScreenDelay {
//            if let window = self.window, let rootViewController = window.rootViewController {
//                var currentController = rootViewController
//                while let presentedController = currentController.presentedViewController {
//                    currentController = presentedController
//                }
//                currentController.present(controller, animated: true, completion: nil)
//            }
//            Thread.sleep(forTimeInterval: 3.0)
//
//        }
//
//
//
//
//        return true
//    }
    
    
    private func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
  
        
        let isRegistered = UserDefaults.standard.bool(forKey: "welcome")
        
        if isRegistered == false{
            print("it's not working")
            // implement register view controller
            let registerViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "logInVC") as! ViewController
            self.window?.rootViewController = registerViewController
            self.window?.makeKeyAndVisible()
            
        }else{
            print("it's not working")
            // implement home view controller
            let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "pageVC") as! pageVC
            self.window?.rootViewController = homeViewController
            self.window?.makeKeyAndVisible()
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

