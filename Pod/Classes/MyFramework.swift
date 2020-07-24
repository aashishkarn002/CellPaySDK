//
//  MyFramework.swift
//  Pods
//
//  Created by John Nilsen on 3/25/16.
//
//

import UIKit

public class MyFramework {
    
    public static func performSegueToFrameworkVC(caller: UIViewController) {
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        caller.present(vc, animated: true, completion: nil)
    }
    
    static var bundle:Bundle {
        let podBundle = Bundle(for: FrameworkVC.self)
        
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }
}
