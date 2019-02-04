//
//  ViewController.swift
//  bipTheGuy
//
//  Created by John Connolly on 2/4/19.
//  Copyright © 2019 John Connolly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK Properties
    @IBOutlet weak var imageToPunch: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK Functions
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 100
        //shrink our image to punch by 100 pixels
        
        self.imageToPunch.bounds = CGRect(
            x: self.imageToPunch.bounds.origin.x + shrinkValue,
            y: self.imageToPunch.bounds.origin.y + shrinkValue,
            width: self.imageToPunch.bounds.size.width - shrinkValue,
            height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds }, completion: nil)
    }
    
    
    // MARK ACTIONS
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    @IBAction func cameraPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
       animateImage()
    }
    
    
}

