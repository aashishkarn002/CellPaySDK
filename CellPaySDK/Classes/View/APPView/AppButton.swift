//
//  AppButton.swift
//  CellPaySDK
//
//  Created by Cellcom on 7/23/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
import UIKit
import MaterialComponents.MaterialButtons

class AppButton: MDCButton {
    
    @IBInspectable var isRounded: Bool = false {
        didSet {
            if isRounded {
                self.roundCorners(UIRectCorner.allCorners, radius: self.frame.height / 2)
            }
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buttonConfig()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonConfig()
    }
    
    func buttonConfig() {
        self.backgroundColor = .clear
        self.setTitleColor(.black, for: .normal)
        self.setImageTintColor(.black, for: .normal)
        self.inkColor = #colorLiteral(red: 0.8941176471, green: 0.01960784314, blue: 0.07450980392, alpha: 0.2370624668)
        self.disabledAlpha = 0.68
    }
}

@IBDesignable class AppPrimaryButton: MDCButton {
    
    @IBInspectable var isRounded: Bool = false {
        didSet {
            if isRounded {
                self.roundCorners(UIRectCorner.allCorners, radius: 10)
            }
        }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonConfig()
    }
     
    func buttonConfig() {
        self.cornerRadius = 10
        self.backgroundColor = #colorLiteral(red: 0.7568817735, green: 0.1294216812, blue: 0.1490422785, alpha: 1)
        self.setTitleColor(.white, for: .normal)
        self.setImageTintColor(.white, for: .normal)
        self.inkColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 0.2370624668)
        self.disabledAlpha = 0.68
    }
}
@IBDesignable class AppMyPrimaryButton: MDCButton {
 
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = 10
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        buttonConfig()
    }
    
    func buttonConfig() {
        self.cornerRadius = 10
        self.backgroundColor = #colorLiteral(red: 0.262745098, green: 0.4862745098, blue: 0.6549019608, alpha: 1)
        self.setTitleColor(.white, for: .normal)
        self.setImageTintColor(.white, for: .normal)
        self.inkColor = #colorLiteral(red: 0.768627451, green: 0.768627451, blue: 0.768627451, alpha: 0.2370624668)
        self.disabledAlpha = 0.68
    }
}

