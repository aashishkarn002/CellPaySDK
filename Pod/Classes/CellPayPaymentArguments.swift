//
//  CellPayPaymnetArguments.swift
//  MyFramework
//
//  Created by Cellcom on 7/27/20.
//

import Foundation
public class CellPayPaymentArguments {
    
    let mobileNumber: String?
//    let imageUrl: String?
    let merchantName: String
    let paymentType:Int?
    let price:Int?
    let invoiceID: String?
    init(mobileNumber:String,merchantName:String,paymentType:Int,price:Int,invoiceID:String) {
        self.mobileNumber = mobileNumber
//        self.imageUrl = imageUrl
        self.merchantName = merchantName
        self.paymentType = paymentType
        self.price = price
        self.invoiceID = invoiceID
    }
}
