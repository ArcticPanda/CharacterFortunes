//
//  ViewControllerOne.swift
//  CharacterFortunes
//
//  Created by Nico Lasta on 6/14/15.
//  Copyright (c) 2015 Nico Lasta. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController {
    @IBOutlet var sampleText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("viewDidLoad")
        
        animationSampler()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animationSampler() {
        // Sampler taken from http://mathewsanders.com/prototyping-iOS-iPhone-iPad-animations-in-swift/
        
        // Create and add a colored square
        let coloredSquare = UIView()
        
        // set background color to blue
        coloredSquare.backgroundColor = UIColor.blueColor()
        
        // set frame (position and size) of the square
        // iOS coordinate system starts at the top left of the screen
        // so this square will be at top left of screen, 50x50pt
        // CG in CGRect stands for Core Graphics
        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        
        // finally, add the square to the screen
        self.view.addSubview(coloredSquare)
        
        // lets set the duration to 1.0 seconds
        // and in the animations block change the background color
        // to red and the x-position  of the frame
        UIView.animateWithDuration(1.0, animations: {
            coloredSquare.backgroundColor = UIColor.redColor()
            
            // for the x-position I entered 320-50 (width of screen - width of the square)
            // if you want, you could just enter 270
            // but I prefer to enter the math as a reminder of what's happenings
            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
        })
        
        sampleText.text = "It does not matter how slowly you go as long as you do not stop."
    }
    
}
