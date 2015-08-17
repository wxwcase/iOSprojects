//
//  ViewController.swift
//  TextFieldTest
//
//  Created by Wei Wang on 5/6/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var moneyField: UITextField!
    @IBOutlet weak var toggleTextField: UITextField!
    @IBOutlet weak var switchField: UISwitch!

    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let moneyDelegate = MoneyTextFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        zipField.delegate = zipCodeDelegate
        moneyField.delegate = moneyDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleInput(sender: UISwitch) {
        if !switchField.on {
            toggleTextField.textColor = UIColor.grayColor()
            toggleTextField.enabled = false
        } else {
            toggleTextField.textColor = UIColor.blackColor()    
            toggleTextField.enabled = true
        }
    }
}

