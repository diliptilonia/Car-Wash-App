//
//  ViewController.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 02/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
   

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    @IBOutlet weak var continueButtonOutlet: UIButton!
    
    var splashScreen:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        UserDefaults.standard.set(true, forKey: "signUp")

        
//        UserDefaults.standard.set(true, forKey: "pageVC")
 
//        continueButtonOutlet.backgroundColor = UIColor
        showPicker()

        emailTextField.tintColor = UIColor.orange
 
        continueButtonOutlet.layer.cornerRadius = 30
        signUpButtonOutlet.layer.cornerRadius = 30
        continueButtonOutlet.clipsToBounds = true
        signUpButtonOutlet.clipsToBounds = true
        continueButtonOutlet.layer.borderColor = UIColor.white.cgColor
        signUpButtonOutlet.layer.borderColor = UIColor.white.cgColor
        continueButtonOutlet.layer.borderWidth = 2
        signUpButtonOutlet.layer.borderWidth = 2

        
        hideKeyBoard()
    }

    

func showPicker() {
    let toolBar = UIToolbar()
    toolBar.sizeToFit()
    let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneClicked))
//    let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
   
    toolBar.setItems([doneButton], animated: true)
    self.passwordTextField.inputAccessoryView = toolBar
}

@objc func doneClicked() {
    self.view.endEditing(true)
}
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    
    @IBAction func forgotButton(_ sender: UIButton) {
    }

    @IBAction func signUpButton(_ sender: UIButton) {
        print("Butin lickced")
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LogInView") as! LogInView
        navigationController?.pushViewController(vc,
                                                 animated: true)
//        self.performSegue(withIdentifier: "logInView", sender: nil)

    }
    @IBAction func continueButton(_ sender: UIButton) {
    }
    
  
}

