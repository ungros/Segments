//
//  Color Extentions.swift
//  Custom TabBar
//
//  Created by Roman on 01.07.2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func addGradient(topColor: UIColor, bottomColor: UIColor) {
        
        let gradient = CAGradientLayer()
        
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }

}

extension UIColor {
   
    static var tabBarColor: UIColor {
        #colorLiteral(red: 1, green: 0.9787003637, blue: 0.9657561284, alpha: 0.2496813633)
    }
    static var tabBarItemSelected: UIColor {
        #colorLiteral(red: 0.1686282274, green: 0.646176736, blue: 1, alpha: 1)
    }
    static var tabBarItemUnselected: UIColor{
        #colorLiteral(red: 0.2288060287, green: 0.2395834053, blue: 0.3254628639, alpha: 1)
    }

    
    

    //  #colorLiteral(red: 0.9746658237, green: 0.5724194406, blue: 0.4765474473, alpha: 1)

}
