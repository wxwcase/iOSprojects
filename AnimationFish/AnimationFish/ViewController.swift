//
//  ViewController.swift
//  AnimationFish
//
//  Created by Wei Wang on 5/12/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOfFishSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func animateButtonPressed(sender: UIButton) {
        let numberOfFish = Int(self.numberOfFishSlider.value)
        
        for loopNumber in 1...numberOfFish {
            let duration: NSTimeInterval = 1.0
            let options = UIViewAnimationOptions.CurveLinear
            let delay = NSTimeInterval(arc4random_uniform(100)) / 1000
            
            let size: CGFloat = CGFloat(arc4random_uniform(40)) + 20
            let yPos: CGFloat = CGFloat(arc4random_uniform(200)) + 20
            
            let fish = UIView()
            fish.frame = CGRectMake(0-size, yPos, size, size)
            fish.backgroundColor = UIColor.redColor()
            self.view.addSubview(fish)
            
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                fish.frame = CGRectMake(320, yPos, size, size)
                }, completion: { animationFished in
                    fish.removeFromSuperview()
            })
            
        }
    }

}

