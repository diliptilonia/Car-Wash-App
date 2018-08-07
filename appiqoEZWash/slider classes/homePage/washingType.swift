//
//  washingType.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import Foundation
import UIKit

class washClass {
    var image: UIImage
    var title: String
    var description: String
    var price: String
    var distance: String
    
    init(image: UIImage, title:String, description: String, price: String, distance: String) {
        self.image = image
        self.title = title
        self.description = description
        self.price = price
        self.distance = distance
    }
}

class myBookingClass {
    var image: UIImage
    var title: String
    var address: String
    var price: String
    var orderStatus: String
    var date: String
    
    init(image: UIImage, title:String, address:String, price:String, orderStatus: String, date:String) {
        self.image = image
        self.title = title
        self.address = address
        self.price = price
        self.orderStatus = orderStatus
        self.date = date
    }
    
}










