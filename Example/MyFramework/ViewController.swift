//
//  ViewController.swift
//  MyFramework
//
//  Created by John Nilsen on 03/25/2016.
//  Copyright (c) 2016 John Nilsen. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func payWithCellPayButtonClicked(_ sender: Any) {
        MyFramework.performSegueToLoginVC(caller: self, requiredArgument: CellPayPaymentArguments(mobileNumber: "9843534280", merchantName: "Online Shop Pvt. Ltd.", paymentType: 1, price: 30, invoiceID: "12313213"))
    }
    
}

