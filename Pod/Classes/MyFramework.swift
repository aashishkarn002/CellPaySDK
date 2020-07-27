//
//  MyFramework.swift
//  Pods
//
//  Created by John Nilsen on 3/25/16.
//
//

import UIKit

public class MyFramework {
    
    public static func performSegueToLoginVC(caller: UIViewController) {
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
         let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
      //  let vc = storyboard.instantiateInitialViewController()!
        loginVC.modalPresentationStyle = .overFullScreen
        caller.present(loginVC, animated: true, completion: nil)
    }
    
    static var bundle:Bundle {
        let podBundle = Bundle(for: LoginVC.self)
        
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        return Bundle(url: bundleURL!)!
    }
}
