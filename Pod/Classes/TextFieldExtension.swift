//
//  TextFieldExtension.swift
//  MyFramework
//
//  Created by Cellcom on 7/26/20.
//

import Foundation
extension UITextField {
    /// Moves the caret to the correct positbion by removing the trailing whitespace
    func fixCaretPosition() {
        // Moving the caret to the correct position by removing the trailing whitespace
        // http://stackoverflow.com/questions/14220187/uitextfield-has-trailing-whitespace-after-securetextentry-toggle
        let beginning = beginningOfDocument
        selectedTextRange = textRange(from: beginning, to: beginning)
        let end = endOfDocument
        selectedTextRange = textRange(from: end, to: end)
    }
}
