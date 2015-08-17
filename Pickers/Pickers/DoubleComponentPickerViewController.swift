//
//  DoubleComponentPickerViewController.swift
//  Pickers
//
//  Created by Wei Wang on 5/12/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class DoubleComponentPickerViewController: UIViewController,
    UIPickerViewDataSource, UIPickerViewDelegate {

    private let fillingComponent = 0
    private let breadComponent = 1
    private let fillingTypes = [
        "Ham", "Turkey", "Peanut Butter", "Tuna Salad",
        "Chicken Salad", "Roast Beef", "Vegemite"
    ]
    private let breadTypes = [
        "White", "Whole Wheat", "Rye", "Sourdough",
        "Seven Grain"
    ]
    
    @IBOutlet weak var doublePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:-
    // MARK: Picker View Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == breadComponent {
            return breadTypes.count
        } else {
            return fillingTypes.count
        }
    }
    
    // MARK: Picker View Delegate Methods
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if component == breadComponent {
            return breadTypes[row]
        } else {
            return fillingTypes[row]
        }
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        let fillingRow = doublePicker.selectedRowInComponent(fillingComponent)
        let breadRow = doublePicker.selectedRowInComponent(breadComponent)
        let filling = fillingTypes[fillingRow]
        let bread = breadTypes[breadRow]
        let message = "Your \(filling) on \(bread) bread will be right up."
        
        let alert = UIAlertController(title: "Thank you for your order", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "Great", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
