//
//  String+Extension.swift
//  CellPaySDK
//
//  Created by Cellcom on 7/23/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
import UIKit
public extension String {
    func isValid(regex: String) -> Bool {
        let predicate = NSPredicate(format:"SELF MATCHES %@", regex)
        let result = predicate.evaluate(with: self)
        return result
    }
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,10}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        let result = emailTest.evaluate(with: self)
        return result
    }
    


}
