//
//  washingTypeTable2.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 06/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class washingTypeTable2: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    var washList: [washClass] = []
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var headerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       // addSlideMenuButton()
        tableView.tableHeaderView = headerView
        washList = createWashingArray()
    }
    
    
    func createWashingArray() -> [washClass] {
        var tempWash: [washClass] = []
        let wash1 = washClass(image: #imageLiteral(resourceName: "wash1"), title: "Complete Wash", description: "Everything included in the internaland external wash", price: "55 AED", distance: "-40min")
        let wash2 = washClass(image: #imageLiteral(resourceName: "wash2"), title: "Exterior Wash", description: "Everything included in the internal and external wash", price: "25 AED", distance: "-30min")
        let wash3 = washClass(image: #imageLiteral(resourceName: "wash3"), title: "Interior Wash", description: "Everything included in the internal and external wash", price: "30 AED", distance: "-30min")
        let wash4 = washClass(image: #imageLiteral(resourceName: "wash4"), title: "Detailing", description: "Everything included in the internal and external wash", price: "115 AED", distance: "- 2hr")
        
        tempWash.append(wash1)
        tempWash.append(wash2)
        tempWash.append(wash3)
        tempWash.append(wash4)
        return tempWash
    }
    

    

}

extension washingTypeTable2 {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return washList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! scheduleCustomeCell2
        let wash = washList[indexPath.row]

        cell.setWash(wash: wash)
        return cell
    }
}















