//
//  logoutVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class logoutVC: UIViewController {

    @IBOutlet weak var logOutOutlet: UIButton!
    @IBOutlet weak var profilePic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        profilePic.layer.borderWidth = 1
        profilePic.layer.borderColor = UIColor.orange.cgColor
        profilePic.layer.masksToBounds = false
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
        
        
        logOutOutlet.layer.cornerRadius = 30
        
        logOutOutlet.clipsToBounds = true
        logOutOutlet.layer.borderColor = UIColor.white.cgColor
        
        logOutOutlet.layer.borderWidth = 2
        
        logOutOutlet.layer.cornerRadius = 30
        
        
    }

    @IBAction func logOutButton(_ sender: UIButton) {
        print("Log out pressed")
    }
    
}
