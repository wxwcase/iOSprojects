//
//  ResultViewController.swift
//  RepresentViews
//
//  Created by Wei Wang on 5/5/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var selection: Selection?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        switch selection! {
        case .Paper:
            label.text = "Paper covers rock!"
            imageView.image = UIImage(named: "PaperCoversRock")
        case .Rock:
            label.text = "Rock crushes scissors!"
            imageView.image = UIImage(named: "RockCrushesScissors")
        case .Scissors:
            label.text = "Scissors cut papers!"
            imageView.image = UIImage(named: "ScissorsCutPaper")
        }
    }
    
    @IBAction func playAgain(sender: UIButton) {
         performSegueWithIdentifier("playAgain", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as! ViewController
    }
}

enum Selection {
    case Scissors
    case Rock
    case Paper
}