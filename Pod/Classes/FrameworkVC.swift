//
//  FrameworkVC.swift
//  Pods
//
//  Created by John Nilsen on 3/25/16.
//
//

import UIKit

public class FrameworkVC: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        let podBundle = Bundle(for: FrameworkVC.self)
        
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
//        let bundle = Bundle(url: bundleURL!)!
    }
}

