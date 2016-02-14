//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Anjani Bhargava on 2/11/16.
//  Copyright © 2016 Anjani Bhargava. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScroll: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backupButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tutorialScroll.contentSize = CGSize(width: 1280, height: 568)
        tutorialScroll.delegate = self
        // Do any additional setup after loading the view.
        backupButton.alpha = 0

    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        pageControl.currentPage = page
        
        
            if page == 3 {
                self.pageControl.alpha = 0
                UIView.animateWithDuration(1, animations: { () -> Void in
                    self.backupButton.alpha = 1
                })
                
            } else {
                self.pageControl.alpha = 1
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
