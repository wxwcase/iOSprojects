//
//  ViewController.swift
//  Image Picker Excercise
//
//  Created by Wei Wang on 5/5/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func experiment(sender: UIButton) {
//        let nextController = UIImagePickerController()
        let controller = UIAlertController()
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default) { action in
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

