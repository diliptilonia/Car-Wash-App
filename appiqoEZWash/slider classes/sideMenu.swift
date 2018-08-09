//
//  sideMenu.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 04/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class sideMenu: BaseViewController {

    @IBOutlet weak var secheduleOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(true, forKey: "Home")
        UserDefaults.standard.set(true, forKey: "signUp")
        
        secheduleOutlet.layer.cornerRadius = 35
        
        secheduleOutlet.clipsToBounds = true
        secheduleOutlet.layer.borderColor = UIColor.white.cgColor
        secheduleOutlet.layer.borderWidth = 2

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
