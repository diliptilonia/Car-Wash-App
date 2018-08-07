//
//  locationDetailVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 03/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class locationDetailVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nextButtonOutlat: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPicker()

        nextButtonOutlat.layer.cornerRadius = 30
        
        nextButtonOutlat.clipsToBounds = true
        nextButtonOutlat.layer.borderColor = UIColor.white.cgColor
        
        nextButtonOutlat.layer.borderWidth = 2
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func showPicker() {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(doneClicked))
//        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        
        toolBar.setItems([doneButton], animated: true)
        self.phoneNumberTextField.inputAccessoryView = toolBar
    }
    @objc func doneClicked() {
        self.view.endEditing(true)
    }

    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OTPvc") as! OTPvc
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
      let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LogInView") as! LogInView
        present(vc, animated: false, completion: nil)
        
        
    }
    
}
