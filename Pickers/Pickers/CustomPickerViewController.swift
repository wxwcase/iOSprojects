//
//  CustomPickerViewController.swift
//  Pickers
//
//  Created by Wei Wang on 5/12/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit
import AudioToolbox

class CustomPickerViewController: UIViewController,
    UIPickerViewDelegate, UIPickerViewDataSource {

    private var images: [UIImage]!
    private var winSoundID: SystemSoundID = 0
    private var crunchSoundID: SystemSoundID = 0
    
    @IBOutlet weak var customPicker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        images = [
            UIImage(named: "seven")!,
            UIImage(named: "bar")!,
            UIImage(named: "crown")!,
            UIImage(named: "cherry")!,
            UIImage(named: "lemon")!,
            UIImage(named: "apple")!,
        ]
        label.text = " "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showButton() {
        button.hidden = false
    }
    
    func playWinSound() {
        if winSoundID == 0 {
            let soundURL = NSBundle.mainBundle().URLForResource("win", withExtension: "wav")! as CFURLRef
            AudioServicesCreateSystemSoundID(soundURL, &winSoundID)
        }
        AudioServicesPlaySystemSound(winSoundID)
        label.text = "WINNER!"
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW,
            Int64(1.5 * Double(NSEC_PER_SEC))),
            dispatch_get_main_queue()) {
                self.showButton()
        }
    }
    
    @IBAction func spin(sender: AnyObject) {
        var win = false
        var numInRow = -1
        var lastVal = -1
        
        for i in 0..<5 {
            let newValue = Int(arc4random_uniform(UInt32(images.count)))
            if newValue == lastVal {
                numInRow++
            } else {
                numInRow = 1
            }
            lastVal = newValue
            
            customPicker.selectRow(newValue, inComponent: i, animated: true)
            customPicker.reloadComponent(i)
            if numInRow >= 3 {
                win = true
            }
        }
        
        if crunchSoundID == 0 {
            let soundURL = NSBundle.mainBundle().URLForResource("crunch", withExtension: "wav")! as CFURLRef
            AudioServicesCreateSystemSoundID(soundURL, &crunchSoundID)
        }
        AudioServicesPlaySystemSound(crunchSoundID)
        
        
        if win {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW,
                Int64(0.5 * Double(NSEC_PER_SEC))),
                dispatch_get_main_queue()) {
                    self.playWinSound()
            }
        } else {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW,
                Int64(0.5 * Double(NSEC_PER_SEC))),
                dispatch_get_main_queue()) {
                    self.showButton()
            }
        }
        button.hidden = true
        label.text = " "
    }

    // MARK: - 
    // MARK: Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 5
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
    
    // MARK: Picker Delegate Methods
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        let image = images[row]
        let imageView = UIImageView(image: image)
        return imageView
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
}
