//
//  scheduleCustomeCell2.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 06/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class scheduleCustomeCell2: UITableViewCell {

    @IBOutlet weak var washImage: UIImageView!
    @IBOutlet weak var washTypeTitle: UILabel!
    @IBOutlet weak var washDescription: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    func setWash(wash: washClass) {
        washImage.image = wash.image
        washTypeTitle.text = wash.title
        washDescription.text = wash.description
        price.text = wash.price
        distance.text = wash.distance
    }

   
}
