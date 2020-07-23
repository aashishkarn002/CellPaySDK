//
//  LoginViewController.swift
//  CellPaySDK
//
//  Created by Cellcom on 7/23/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
import UIKit
public class LoginViewController: UIViewController {
    
    @IBOutlet weak var logoImageView: UIImageView!
    override public func viewDidLoad() {
        super.viewDidLoad()
        logoImageView.image = bundledImage(named: "logo")
    }
}
func bundledImage(named: String) -> UIImage? {
    let image = UIImage(named: named)
    if image == nil {
        return UIImage(named: named, in: Bundle(for: LoginViewController.classForCoder()), compatibleWith: nil)
    } // Replace MyBasePodClass with yours
    return image
}
