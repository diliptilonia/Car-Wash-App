//
//  myBookingVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 05/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class myBookingVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var bookingList: [myBookingClass] = []
    
    @IBOutlet var headerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableHeaderView = headerView

        bookingList = createWashingArray()
    }
    func createWashingArray() -> [myBookingClass] {
        var tempBookingList: [myBookingClass] = []
        let order1 = myBookingClass(image: #imageLiteral(resourceName: "wash1"), title: "Complete Wash", address: "4/466, Pradhan Marg, Malviya Nagar, Jaipur", price: "24 AED", orderStatus: "Completed", date: "04-06-2018")
        let order2 = myBookingClass(image: #imageLiteral(resourceName: "wash2"), title: "Exterior Wash", address: "4/466, Pradhan Marg, Malviya Nagar, Jaipur", price: "55 AED", orderStatus: "Cancel", date: "02-05-2018")
        
        tempBookingList.append(order1)
        tempBookingList.append(order2)
        return tempBookingList
    }

}

extension myBookingVC {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookingList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! myBookingCustomCell
        let booked = bookingList[indexPath.row]
        
        cell.setWash(booked: booked)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let bookedData = bookingList[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "MyBookingDetails") as! MyBookingDetails
        vc.titleLab = bookedData.title
        vc.addressLab = bookedData.address
        vc.priceLab = bookedData.price
        vc.orderStatuLab = bookedData.orderStatus
        vc.dateLab = bookedData.date
        vc.imageLab = bookedData.image
        
        navigationController?.pushViewController(vc, animated: true)
        

    }
}








