//
//  ConfirmPaymentVC.swift
//  MyFramework
//
//  Created by Cellcom on 7/27/20.
//

import Foundation
import UIKit
public class ConfirmPaymentVC: UIViewController {
    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var appliedFeeLabel: UILabel!
    @IBOutlet weak var enterPinView: UIView!
    @IBOutlet weak var amountTF: SkyFloatingLabelTextField!
    @IBOutlet weak var confirmButtonView: UIView!
    @IBOutlet weak var enterOTPView: UIView!
    @IBOutlet weak var enterPinTF: SkyFloatingLabelTextField!
    @IBOutlet weak var amountTFView: UIView!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var otpTF: SkyFloatingLabelTextField!
    
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.setupView()
    }
    @IBAction func closeButtonClicked(_ sender: Any) {
    }
    
    @IBAction func confirmPaymentButtonClicked(_ sender: Any) {
    }
    
    
}
extension ConfirmPaymentVC: UITextFieldDelegate {
    private func setupView(){
        self.confirmButton.layer.cornerRadius = 22.5
        self.enterPinTF.delegate = self
        self.amountTF.delegate = self
        self.otpTF.delegate = self
        
    }
}
