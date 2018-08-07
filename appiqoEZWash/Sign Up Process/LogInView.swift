//
//  LogInView.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 03/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class LogInView: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButtonOutlat: UIButton!
    @IBOutlet weak var signUpButtonOutlat: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpButtonOutlat.layer.cornerRadius = 30
       
        signUpButtonOutlat.clipsToBounds = true
        signUpButtonOutlat.layer.borderColor = UIColor.white.cgColor
      
        signUpButtonOutlat.layer.borderWidth = 2
        
        logInButtonOutlat.layer.cornerRadius = 15
        
        logInButtonOutlat.clipsToBounds = true
        logInButtonOutlat.layer.borderColor = UIColor.white.cgColor
       
        logInButtonOutlat.layer.borderWidth = 2
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
   
    @IBAction func signUpButton(_ sender: UIButton) {
        print("button working")
        
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LogInView") as! LogInView
        present(vc, animated: true, completion: nil)

    }
}
