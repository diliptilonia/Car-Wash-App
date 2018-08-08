//
//  sideMenu.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 04/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class sideMenu: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(true, forKey: "Home")
        UserDefaults.standard.set(true, forKey: "signUp")


        self.addSlideMenuButton()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    
    @IBAction func scheduleButton(_ sender: UIButton) {
        print("this is working")
       
    }
    
    
}
