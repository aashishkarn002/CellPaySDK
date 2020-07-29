//
//  MyFramework.swift
//  Pods
//
//  Created by John Nilsen on 3/25/16.
//
//

import UIKit

public class MyFramework {
    
    public static func performSegueToLoginVC(caller: UIViewController,requiredArgument: CellPayPaymentArguments) {
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
         let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
      //  let vc = storyboard.instantiateInitialViewController()!
        loginVC.modalPresentationStyle = .overFullScreen
        loginVC.getData(requiredData: requiredArgument)
        caller.present(loginVC, animated: true, completion: nil)
    }
     static func performSegueToMerchantTransactionDetailVC(caller: UIViewController,merchantDetailList:[MemberDetailsList],requiredArguments: CellPayPaymentArguments) {
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
         let merchantTransactionVC = storyboard.instantiateViewController(withIdentifier: "MerchantTransactionDetailVC") as! MerchantTransactionDetailVC
      //  let vc = storyboard.instantiateInitialViewController()!
        merchantTransactionVC.modalPresentationStyle = .overCurrentContext
        merchantTransactionVC.getDataForMerchant(merchantBankList: merchantDetailList, requiredArguments: requiredArguments)
        caller.present(merchantTransactionVC, animated: true, completion: nil)
    }
    public static func performSegueToConfirmPaymentVC(caller: UIViewController,requiredArguments: CellPayPaymentArguments,userName: String,accountNo: String,paymentDescription:String,otpEnable:Bool) {
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
         let confirmPaymentVC = storyboard.instantiateViewController(withIdentifier: "ConfirmPaymentVC") as! ConfirmPaymentVC
      //  let vc = storyboard.instantiateInitialViewController()!
        confirmPaymentVC.modalPresentationStyle = .popover
        confirmPaymentVC.getRequiredArguments(requiredArguments: requiredArguments, userName: userName,accountNumber:accountNo, paymentDescription: paymentDescription, otpEnable: otpEnable)
        caller.present(confirmPaymentVC, animated: true, completion: nil)
    }
    static var bundle:Bundle {
        let podBundle = Bundle(for: LoginVC.self)
        
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }
}
