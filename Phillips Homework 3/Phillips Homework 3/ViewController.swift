//
//  ViewController.swift
//  Phillips Homework 3
//
//  Created by Grace Phillips on 2/20/20.
//  Copyright © 2020 Grace Phillips. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var button2: UIButton!
    
    
    @IBAction func toggleButton(_ sender: Any) {
        if (imageView.isAnimating)
        {
            imageView.stopAnimating()
        } else
        {
            imageView.startAnimating()
        }
    }
    
    @IBAction func setSpeed(_ sender: Any) {
        imageView.animationDuration=TimeInterval(3.0-speedSlider.value)
        imageView.startAnimating()
        
    }
    
    
    @IBAction func hideImage(_ sender: UIButton) {
        background.isHidden = true
    }
    
    @IBAction func showImage(_ sender: Any) {
        background.isHidden = false
    }
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let bartAnimation: [UIImage] = [
                   UIImage(named: "frame1")!,
                   UIImage(named: "frame2")!,
                   UIImage(named: "frame3")!,
                   UIImage(named: "frame4")!,
                   UIImage(named: "frame5")!,
                   UIImage(named: "frame6")!,
                   UIImage(named: "frame7")!,
                   UIImage(named: "frame8")!,
                   UIImage(named: "frame9")!,
                   UIImage(named: "frame10")!,
                   UIImage(named: "frame11")!,
    ]
        
        imageView.animationImages=bartAnimation
        imageView.animationDuration=1.0
    }
}




