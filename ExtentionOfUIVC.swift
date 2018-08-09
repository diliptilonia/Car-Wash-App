//
//  ExtentionOfUIVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 09/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import Foundation
import UIKit
extension UIViewController {
   public func hideKeyBoard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
}
