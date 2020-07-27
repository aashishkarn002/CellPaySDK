//
//  MerchantTransaactionDetails.swift
//  MyFramework
//
//  Created by Cellcom on 7/27/20.
//

import Foundation
import UIKit
public class MerchantTransaaactionDetailVC: UIViewController {
    
    @IBOutlet weak var nextButtonView: UIView!
    @IBOutlet weak var accountNumberView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var invoiceNumberTF: SkyFloatingLabelTextField!
    @IBOutlet weak var totalAmountTF: SkyFloatingLabelTextField!
    @IBOutlet weak var descriptionTF: SkyFloatingLabelTextField!
    @IBOutlet weak var selectBankToDebitTF: SkyFloatingLabelTextField!
    @IBOutlet weak var accountNumberTF: SkyFloatingLabelTextField!
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.setupView()
    }
    
    @IBAction func nextBttonClicked(_ sender: Any) {
    }
}
extension MerchantTransaaactionDetailVC: UITextFieldDelegate {
    private func setupView(){
        self.nextButton.layer.cornerRadius = 22.5
        self.invoiceNumberTF.delegate = self
        self.totalAmountTF.delegate = self
        self.descriptionTF.delegate = self
        self.selectBankToDebitTF.delegate = self
        self.accountNumberTF.delegate = self
        
    }
    
}
