//
//  UiView+Extensions.swift
//  CellPaySDK
//
//  Created by Cellcom on 7/23/20.
//  Copyright © 2020 Cellcom. All rights reserved.
//

import Foundation
import UIKit
extension UIView {

func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    self.layer.mask = mask
}

}
