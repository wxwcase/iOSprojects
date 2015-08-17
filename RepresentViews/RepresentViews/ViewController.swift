//
//  ViewController.swift
//  RepresentViews
//
//  Created by Wei Wang on 5/5/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rockSelected(sender: UIButton) {
        let controller: ResultViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultViewController") as! ResultViewController
        controller.selection = Selection.Rock
        presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func paperSelected(sender: UIButton) {
        performSegueWithIdentifier("paperSegue", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "scissorsSegue" {
            let controller = segue.destinationViewController as!
                ResultViewController
            controller.selection = Selection.Scissors
        } else if segue.identifier == "paperSegue" {
            let controller = segue.destinationViewController as!
                ResultViewController
            controller.selection = Selection.Paper
        }
    }
    
    @IBAction func scissorsSelected(sender: UIButton) {
        performSegueWithIdentifier("scissorsSegue", sender: self)
    }

}

