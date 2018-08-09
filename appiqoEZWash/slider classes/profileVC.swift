//
//  profileVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit
import DLRadioButton

class profileVC: UIViewController {

    @IBOutlet var otherButtons: [DLRadioButton]!
    @IBOutlet weak var male: DLRadioButton!
    @IBOutlet weak var female: DLRadioButton!
    @IBOutlet weak var profilePic: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        profilePic.layer.borderWidth = 1
        profilePic.layer.borderColor = UIColor.orange.cgColor
        profilePic.layer.masksToBounds = false
        profilePic.layer.cornerRadius = profilePic.frame.height/2 
        profilePic.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    @IBAction func selectedButton(_ sender: UIButton) {
        if sender.isSelected == false {
            print("selected")
    }
    else {
    
        sender.isSelected = true
    }
    
    }
}

extension DLRadioButton {
    func setSelected(_ selected: Bool) {
        if self.isSelected != selected {
            self.sendActions(for: .touchUpInside)
            
        }
    }
}
