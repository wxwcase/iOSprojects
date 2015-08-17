//
//  ViewController.swift
//  Click Counter
//
//  Created by Wei Wang on 5/3/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
}

