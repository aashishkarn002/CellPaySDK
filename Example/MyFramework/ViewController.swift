//
//  ViewController.swift
//  MyFramework
//
//  Created by John Nilsen on 03/25/2016.
//  Copyright (c) 2016 John Nilsen. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController,PaymentProtocol {
   
    var paymentID: String?
    var status: Bool?
    var cellpayArguments: CellPayPaymentArguments?
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func payWithCellPayButtonClicked(_ sender: Any) {
        //This is for reference only use actual value
        CellPayFramework.performSegueToLoginVC(caller: self, requiredArgument: CellPayPaymentArguments(mobileNumber: "9843534280", merchantName: "Online Shop Pvt. Ltd.", paymentType: 1, price: 30, invoiceID: "12313213"), delegate: self,islive: false)
    }
    func sucess(paymentResponse: ConfirmPaymentResponse, cellPayArguments: CellPayPaymentArguments) {
        self.paymentID = String(paymentResponse.payload.confirmPaymentResult.id)
        self.status = paymentResponse.status
        print(self.paymentID ?? "")
         print(self.status ?? false)
       }
       
       func failed(cellPayArguments: CellPayPaymentArguments) {
        self.cellpayArguments = cellPayArguments
        
       }
    
}

