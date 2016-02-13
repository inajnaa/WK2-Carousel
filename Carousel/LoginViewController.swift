//
//  LoginViewController.swift
//  Carousel
//
//  Created by Anjani Bhargava on 2/10/16.
//  Copyright © 2016 Anjani Bhargava. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginNavBar: UIImageView!
    @IBOutlet weak var fieldParentView: UIView!
    
    
    @IBAction func didPressBack(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        scrollView.delegate = self
        scrollView.contentSize = scrollView.frame.size
        scrollView.contentInset.bottom = 100
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -110
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    @IBAction func didPressSignin(sender: AnyObject) {
        
        self.activityIndicator.startAnimating()
        
        delay(2) { () -> () in
            
            if self.emailField.text == "kingsley" && self.passwordField.text == "password" {
                self.activityIndicator.stopAnimating()
                self.performSegueWithIdentifier("tutorialSegue", sender: nil)
                
            } else {
                self.activityIndicator.stopAnimating()
                let alertController = UIAlertController(title: "Error", message: "Wrong credentials", preferredStyle: .Alert)
                
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: { (UIAlertAction) in
                })
                
                alertController.addAction(cancelAction)
                
                self.presentViewController(alertController, animated: true, completion: {
                })
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.2) { () -> Void in
            self.loginNavBar.transform = CGAffineTransformIdentity
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.alpha = 1
            self.fieldParentView.alpha = 1
        }
    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        scrollView.contentOffset.y = scrollView.contentInset.bottom
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttonInitialY
    }
    
}