//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Roman on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coreAnimationView: UIView!
    @IBOutlet weak var springAnimation: UIView!
    
    private var originCoordinate: CGFloat?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.y
    }

    @IBAction func runCoreAnimation(_ sender: UIButton) {
        
        sender.bounding()
        
        UIView.animate(withDuration:1, delay:0, options:[.autoreverse, .repeat], animations:{
            if self.coreAnimationView.frame.origin.y == self.originCoordinate {
                self.coreAnimationView.frame.origin.y -= 60
            } else {
                self.coreAnimationView.frame.origin.y += 60
            }
        })
    }

    @IBAction func runSpringAnimationButton(_ sender: SpringButton) {
    }
    
    
    
}
