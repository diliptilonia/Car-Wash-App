//
//  OTPvc.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 03/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit
import KWVerificationCodeView
class OTPvc: UIViewController {

    @IBOutlet weak var submitOutLat: UIButton!
   
    @IBOutlet weak var verificationCodeView: KWVerificationCodeView!
    override func viewDidLoad() {
        super.viewDidLoad()
       verficationViewDesign()

        
        
        submitOutLat.layer.cornerRadius = 30
        
        submitOutLat.clipsToBounds = true
        submitOutLat.layer.borderColor = UIColor.white.cgColor
        submitOutLat.layer.borderWidth = 2
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func verficationViewDesign() {
        verificationCodeView.underlineColor = UIColor.orange
        verificationCodeView.tintColor = UIColor.orange
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        print("Working submit button")
        let storyboard = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sideMenu") as! sideMenu
        self.navigationController?.pushViewController(storyboard, animated: true)
//        performSegue(withIdentifier: "goToHome", sender: self)
    }
    
//     func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "goToHome"{
//            var vc = segue.destination as! sideMenu
//        }
//    }
//
    
    
//    @IBAction func backButton(_ sender: UIButton) {
//        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "locationDetailVC") as! locationDetailVC
//        present(vc, animated: false, completion: nil)
//    }
    

}
