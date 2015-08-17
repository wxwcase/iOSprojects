//
//  MYOAViewController.swift
//  Adventure Nav
//
//  Created by Wei Wang on 5/8/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import Foundation
import UIKit

class MYOAViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem =
            UIBarButtonItem(title: "Start Over",
                            style: UIBarButtonItemStyle.Plain,
                            target: self, action: "startOver")
    }
    
    func startOver() {
        if let navigationController = self.navigationController {
            navigationController.popToRootViewControllerAnimated(true)
        }
    }
    
    deinit {
        println("MYOAViewController Deallocated")
    }
}