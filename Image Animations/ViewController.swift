//
//  ViewController.swift
//  Image Animations
//
//  Created by Solomon Rajkumar on 22-12-15.
//  Copyright © 2015 SoluAppHouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var i = 0
    
    var timer = NSTimer()
    
    var isAnimationNotRunning = true
    
    @IBOutlet weak var alienImage: UIImageView!
    
    
    @IBOutlet weak var startAnimationButton: UIButton!
    
    
    @IBAction func animateImage(sender: AnyObject) {
        
        if isAnimationNotRunning == true {
        
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
            
            isAnimationNotRunning = false
            
            startAnimationButton.setTitle("Stop Animation", forState: UIControlState.Normal)
            
        } else {
            
            timer.invalidate()
            
            isAnimationNotRunning = true
            
            startAnimationButton.setTitle("Start Animation", forState: UIControlState.Normal)
            
        }
        
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func doAnimation() {
        
        i++
        
        if i > 5 {
            
            i = 1
            
        }
        
        // change the image on button click
        alienImage.image = UIImage(named: "f\(i).png")
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*

    // called before view is actually displayed
    override func viewDidLayoutSubviews() {
        
        // to move image from left to right
        // to move alien away from screen
        //alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y)
        
        // to create fading effect
        //alienImage.alpha = 0
        
        // change object size
        // gets locations and size
        alienImage.frame = CGRectMake(100, 20, 0, 0)
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        // animate alien
        UIView.animateWithDuration(1) { () -> Void in
            
            // to move image from left to right
            //self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
            
            // to create fading effect
            //self.alienImage.alpha = 1
            
            // change object size
            // gets locations and size
            self.alienImage.frame = CGRectMake(100, 20, 100, 100)
            
        }
        
    }

*/

}

