//
//  profileVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class profileVC: UIViewController {

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
