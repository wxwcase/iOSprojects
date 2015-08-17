//
//  TwoTabViewController.swift
//  Two Tabs
//
//  Created by Wei Wang on 8/17/15.
//  Copyright (c) 2015 Wei Wang. All rights reserved.
//

import UIKit

class TwoTabViewController: UIViewController {

    var firstViewController: UIViewController?
    var secondViewController: UIViewController?
    @IBOutlet weak var contentView: UIView!
    
    private var activeViewController: UIViewController? {
        didSet {
            removeInactiveViewController(oldValue)
            updateActiveViewController()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activeViewController = firstViewController
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressedFirstButton(sender: AnyObject) {
        activeViewController = firstViewController
    }
    
    @IBAction func didPressedSecondButton(sender: AnyObject) {
        activeViewController = secondViewController
    }
    
    private func removeInactiveViewController(inactiveViewController: UIViewController?) {
        if let inActiveVC = inactiveViewController {
            inActiveVC.willMoveToParentViewController(nil)
            inActiveVC.view.removeFromSuperview()
            inActiveVC.removeFromParentViewController()
        }
    }
    
    private func updateActiveViewController() {
        if let activeVC = activeViewController {
            addChildViewController(activeVC)
            activeVC.view.frame = contentView.bounds
            contentView.addSubview(activeVC.view)
            activeVC.didMoveToParentViewController(self)
        }
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
