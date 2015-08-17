//
//  MoneyTextFieldDelegate.swift
//  TextFieldTest
//
//  Created by Wei Wang on 5/6/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class MoneyTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    var price: NSNumber?
    let digits: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
   
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var oldText = textField.text as NSString
        var newText = oldText.stringByReplacingCharactersInRange(range, withString: string) as NSString
        var newTextString = String(newText)
        
//        let digits = NSCharacterSet.decimalDigitCharacterSet()
//        var digitText = ""
//        for c in newTextString.unicodeScalars {
//            if digits.longCharacterIsMember(c.value) {
//                digitText.append(c)
//            }
//        }
        var digitText = ""
        for c in newTextString {
            if digits.contains(c) {
                digitText.append(c)
            }
        }
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        formatter.locale = NSLocale(localeIdentifier: "en_US")
        var numberFromField = (NSString(string: digitText).doubleValue)/100
        newText = formatter.stringFromNumber(numberFromField)!
        
        textField.text = newText as String
        return false        
    }
}
