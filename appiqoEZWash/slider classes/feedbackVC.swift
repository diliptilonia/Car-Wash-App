//
//  feedbackVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class feedbackVC: UIViewController {

    @IBOutlet weak var feedbackTextField: UITextView!
    @IBOutlet weak var submitButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyBoard()
        
        submitButtonOutlet.layer.cornerRadius = 30
        
        submitButtonOutlet.clipsToBounds = true
        submitButtonOutlet.layer.borderColor = UIColor.white.cgColor
        submitButtonOutlet.layer.borderWidth = 2
        
        feedbackTextField.layer.cornerRadius = 40
        feedbackTextField.clipsToBounds = true
        feedbackTextField.layer.borderColor = UIColor.white.cgColor
        feedbackTextField.layer.borderWidth = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
    }
    
  

}
