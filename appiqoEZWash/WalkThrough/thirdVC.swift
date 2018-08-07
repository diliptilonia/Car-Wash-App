//
//  thirdVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class thirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        UserDefaults.standard.set(true, forKey: "welcome")
        print(UserDefaults.standard.bool(forKey: "welcome"))
//        UserDefaults.standard.set(false, forKey: "welcome")
//        print(UserDefaults.standard.bool(forKey: "welcome"))
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "logInVC") as! ViewController
        present(vc, animated: true, completion: nil)
    }
    

}
