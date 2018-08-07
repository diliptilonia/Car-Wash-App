//
//  myBookingCustomCell.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 06/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class myBookingCustomCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var imageOfWashType: UIImageView!
    
    
    func setWash(booked: myBookingClass) {
       title.text = booked.title
        imageOfWashType.image = booked.image
        address.text = booked.address
        price.text = booked.price
        status.text = booked.orderStatus
        date.text = booked.date
    }
 

}
