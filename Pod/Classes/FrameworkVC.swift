//
//  FrameworkVC.swift
//  Pods
//
//  Created by John Nilsen on 3/25/16.
//
//

import UIKit

public class FrameworkVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override public func viewDidLoad() {
        super.viewDidLoad()
        let podBundle = Bundle(for: FrameworkVC.self)
        
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
//        let bundle = Bundle(url: bundleURL!)!
//        let cellNib = UINib(nibName: "OurCell", bundle: bundle)
//        tableView.register(cellNib, forCellReuseIdentifier: "OurCell")
//        tableView.estimatedRowHeight = 80
//        tableView.rowHeight = UITableView.automaticDimension
    }
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return tableView.dequeueReusableCell(withIdentifier: "OurCell")!
//       }
//
//       public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//           return 1
//       }
}

