//
//  Extention.swift
//  CoreAnimation
//
//  Created by Roman on 14.07.2022.
//

import UIKit


extension UIButton {
    
    func bounding() {
        let bound = CASpringAnimation(keyPath: "transform.scale")
        
        bound.duration = 0.4
        bound.fromValue = 0.90
        bound.toValue = 1
        bound.autoreverses = true
        bound.initialVelocity = 0.3
        bound.damping = 0.6
        
        layer.add(bound, forKey: nil)
    }
}
