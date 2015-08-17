//
//  ZipCodeTextFieldDelegate.swift
//  TextFieldTest
//
//  Created by Wei Wang on 5/6/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let maxLength = 5
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text as NSString
//        println("Old text: \(newText)")
        if count(string) + newText.length <= 5 {
            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
            return true
        } else {
            return false
        }
//        println("Replacement string is :\(string) and newText is \(newText)")
    }
}
