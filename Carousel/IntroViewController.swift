//
//  IntroViewController.swift
//  Carousel
//
//  Created by Anjani Bhargava on 2/9/16.
//  Copyright © 2016 Anjani Bhargava. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var imageFour: UIImageView!
    @IBOutlet weak var imageFive: UIImageView!
    @IBOutlet weak var imageSix: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentSize =  introImage.image!.size
        scrollView.delegate = self
        
  /*      imageOne.transform = CGAffineTransformMakeRotation(CGFloat (-25 * M_PI / 180))
        imageTwo.transform = CGAffineTransformMakeRotation(CGFloat (35 * M_PI / 180))
        imageThree.transform = CGAffineTransformMakeRotation(CGFloat (-45 * M_PI / 180))
        imageFour.transform = CGAffineTransformMakeRotation(CGFloat (30 * M_PI / 180))
        imageFive.transform = CGAffineTransformMakeRotation(CGFloat (-25 * M_PI / 180)) */
        
        // Do any additional setup after loading the view.
    }
    
 /*     func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        UIView.animateWithDuration(2) { () -> Void in
          self.imageOne.transform = CGAffineTransformIdentity
            self.imageOne.center.x = self.imageOne.center.x + 65
            self.imageOne.center.y = self.imageOne.center.y + 380
            
            self.imageTwo.transform = CGAffineTransformIdentity
            self.imageTwo.center.x = self.imageTwo.center.x - 85
            self.imageTwo.center.y = self.imageTwo.center.y + 380
            
            self.imageThree.transform = CGAffineTransformIdentity
            self.imageThree.center.x = self.imageThree.center.x - 45
            self.imageThree.center.y = self.imageThree.center.y + 390
        }
    } */
    
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
