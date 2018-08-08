//
//  launchedScreenDelay.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 07/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class launchedScreenDelay: UIViewController {
    var window: UIWindow?


    override func viewDidLoad() {
        super.viewDidLoad()
        print("working in launch screen delay")
////        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
////            let stroboard = UIStoryboard(name: "Main", bundle: nil)
////            let vc = self.storyboard?.instantiateViewController(withIdentifier: "logInVC") as! ViewController
////            self.present(vc, animated: false)
//        }
        if (UserDefaults.standard.bool(forKey: "welcome")) == true && (UserDefaults.standard.bool(forKey: "signUp")) == true {
            print("Yes welcomeScreen shown before")
            
                print("Yes sign up already ")
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                
                let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let exampleVC = mainStoryboard.instantiateViewController(withIdentifier: "sideMenu") as! sideMenu
                let navigationController = UINavigationController(rootViewController: exampleVC)
                self.window = UIWindow(frame: UIScreen.main.bounds)
                self.window!.rootViewController = navigationController
                self.window!.makeKeyAndVisible()
                }
            
        } else if (UserDefaults.standard.bool(forKey: "welcome")) == true && (UserDefaults.standard.bool(forKey: "signUp")) == false  {
            print("launched but din't sign up")
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
                        let exampleVC = mainStoryboard.instantiateViewController(withIdentifier: "logInVC") as! ViewController
                        let navigationController = UINavigationController(rootViewController: exampleVC)
                        self.window = UIWindow(frame: UIScreen.main.bounds)
                        self.window!.rootViewController = navigationController
                        self.window!.makeKeyAndVisible()
            }
            
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let exampleVC = mainStoryboard.instantiateViewController(withIdentifier: "pageVC") as! pageVC
            let navigationController = UINavigationController(rootViewController: exampleVC)
            self.window = UIWindow(frame: UIScreen.main.bounds)
            self.window!.rootViewController = navigationController
            self.window!.makeKeyAndVisible()
        }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
