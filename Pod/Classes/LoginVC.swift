//
//  LoginVC.swift
//  MyFramework
//
//  Created by Cellcom on 7/24/20.
//

import Foundation
import UIKit
public class LoginVC: UIViewController{
    
    @IBOutlet weak var pinNumberTF: SkyFloatingLabelTextField!
    @IBOutlet weak var mobileNumberTF: SkyFloatingLabelTextField!
    @IBOutlet weak var loginButton: UIButton!
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardOnTapAround()
        self.setupView()
        self.setupLanguageForSDK()
       
    }
    
    func hideKeyboardOnTapAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        if mobileNumberTF.text?.isEmpty ?? true{
            mobileNumberTF.errorMessage = StringConstants.sharedInstance.invalidNumber
        }
        if mobileNumberTF.text?.count ?? 0 < 10  {
            mobileNumberTF.errorMessage = StringConstants.sharedInstance.invalidNumber
        }
        if pinNumberTF.text?.count ?? 0 < 6 {
            pinNumberTF.errorMessage = StringConstants.sharedInstance.invalidPin
        }
        if pinNumberTF.text?.isEmpty ?? true  {
            pinNumberTF.errorMessage = StringConstants.sharedInstance.invalidPin
        }
        else {
            mobileNumberTF.errorMessage = ""
            pinNumberTF.errorMessage = ""
            self.callLogin()
            print("button was clicked")
        }
        
    }
}
extension LoginVC {
    func callLogin() {
        IJProgressView.shared.showProgressView()
        let apiCalling = ApiCalling()
        apiCalling.userLogin(userName:mobileNumberTF.text ?? "",password:pinNumberTF.text ??          "",completion: { (status) in
            switch status {
            case .success(let result):
                print(result)
                self.getBankAccount()
            case .failure(let error):
                print(error)
                IJProgressView.shared.hideProgressView()
            }
        })
    }
    func getBankAccount() {
        let apiCalling = ApiCalling()
        apiCalling.getCellPayBankAccoutList { (status) in
            switch status {
            case .success(let response):
                self.callPayMerchantmemberPayment()
                print(response)
            case .failure(let error):
                IJProgressView.shared.hideProgressView()
                print(error)
                
            }
        }
    }
    func callPayMerchantmemberPayment(){
        
        let customValues:[InternalCustomValues] = [
            SelectBankInternalValue(fieldID: "35",value: "NIBL"),
            PaymentMethodInternalValue(fieldID: "15", value: "Account"),
            AccountNumberInternalValue(fieldID: "14", value: "gah@123"),
            InvoiceNumberInternalValue(fieldID: "99", value: "1123")
        ]
        let params = BasePaymentSP(transferTypeID: "50", amount: "200", toMemberPrincipal: "9801977888", basePaymentSPDescription: "Pay Merchant", currencyID: "1", webRequest: true, customValues: customValues.map(BasePaymentCustomValues.init), isOtpEnable: false)
        let sendParams = try? params.toDictionary()
        let apiCalling = ApiCalling()
        apiCalling.callMemberPayments(parameters: sendParams) { (status) in
            switch status {
            case .success(let response):
                IJProgressView.shared.hideProgressView()
                print(response)
            case .failure(let error):
                IJProgressView.shared.hideProgressView()
                print(error)
                
            }
        }
        
    }
}
extension LoginVC: UITextFieldDelegate {
    
    private func setupView(){
        self.loginButton.layer.cornerRadius = 22.5
        self.mobileNumberTF.delegate = self
        self.pinNumberTF.delegate = self
        
    }
    private func  setupLanguageForSDK() {
        if UserDefaults.standard.object(forKey: currentLanguageType) != nil {
            StringConstants.sharedInstance.setupLanguage(whichlanguage: LanguageType.nepali)
        }else {
            StringConstants.sharedInstance.setupLanguage(whichlanguage: LanguageType.english)
        }
    }
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        if let mobileNumbertextField = mobileNumberTF {
            mobileNumbertextField.errorMessage = ""
        }
        if let pinNumbertextField = pinNumberTF {
            pinNumbertextField.errorMessage = ""
        }
    }
}
