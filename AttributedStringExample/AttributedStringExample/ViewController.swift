//
//  ViewController.swift
//  AttributedStringExample
//
//  Created by Wei Wang on 5/9/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let titleFont = UIFont(name: "Copperplate", size: 50.0) {
            let shadow: NSShadow = NSShadow()
            shadow.shadowOffset = CGSizeMake(-2.0, 2.0)
            
            let attribtues = [
                NSFontAttributeName: titleFont,
                NSUnderlineStyleAttributeName: 1,
                NSForegroundColorAttributeName: UIColor.whiteColor(),
                NSStrokeWidthAttributeName: 3.0,
                NSShadowAttributeName: shadow
            ]
            
            var title = NSAttributedString(string: "NSAttributedString", attributes: attribtues)
            
            var label = UILabel(frame: CGRectMake(((self.view.bounds.size.width - title.size().width) / 2.0), 40.0, title.size().width, title.size().height))
            
            label.attributedText = title
            view.addSubview(label)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

