//
//  MyBookingDetails.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 09/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class MyBookingDetails: UIViewController {
    
    @IBOutlet weak var orderImage: UIImageView?
    @IBOutlet weak var OrderStatuData: UILabel?
    @IBOutlet weak var titleData: UILabel?
    @IBOutlet weak var priceData: UILabel?
    @IBOutlet weak var dateData: UILabel?
    @IBOutlet weak var addressData: UILabel?
    
   
  var imageLab: UIImage = #imageLiteral(resourceName: "wash1")
    var titleLab: String = ""
    var addressLab: String = ""
    var priceLab: String = ""
    var orderStatuLab: String = ""
    var dateLab: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Working")
        titleData?.text = titleLab
        OrderStatuData?.text = String("Booking \(orderStatuLab)")
        priceData?.text = priceLab
        dateData?.text = dateLab
        addressData?.text = addressLab
       orderImage?.image = imageLab

    }

  
}
