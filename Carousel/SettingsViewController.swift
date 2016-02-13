//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Anjani Bhargava on 2/11/16.
//  Copyright © 2016 Anjani Bhargava. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsScroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScroll.contentSize = CGSize(width: 320, height: 695)

        // Do any additional setup after loading the view.
    }
    @IBAction func didDismiss(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func didPressSignOut(sender: AnyObject) {
        let alertController = UIAlertController(title: "Are you sure?", message: "", preferredStyle: .ActionSheet)
        
        let cancelButton = UIAlertAction(title: "Cancel", style: .Cancel) { (UIAlertAction) -> Void in
        }
        
        alertController.addAction(cancelButton)
        
        let signOutAction = UIAlertAction(title: "Sign Out", style: .Destructive) { (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("signOutSegue", sender: nil)
        }
        
        alertController.addAction(signOutAction)
        
        presentViewController(alertController, animated: true) { () -> Void in
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
