//
//  RegixValidation.swift
//  CellPaySDK
//
//  Created by Cellcom on 7/23/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
public enum RegexValidation: String {
    case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,10}"
    
    /*
     Password validation
     - 1 UpperCase +
     - 1 digit +
     - 8 characters +
     - 1 Special characters +
     */
    case password = "^(?=.*[A-Z])(?=.*\\d)(?=.*[!@#\\$%^&*~`()_+=\\[{\\]};:<>|./?,-])[A-Za-z\\d!@#\\$%^&*~`()_+=\\[{\\]};:<>|./?,-]{8,}$"
    case minimum = "^.{8,}$"
    case starPassword = "^(?=.*[A-Z])(?=.*\\d)(?=.*[!@#$%^&*~`()_+=\\[{\\]};:<>|./?,-])[A-Za-z\\d!@#$%^&*~`()_+=\\[{\\]};:<>|./?,-]{10,}$"
    //case isValidPassword = "[0-1]"
}
