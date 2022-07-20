//
//  MainTabBarViewController.swift
//  Custom TabBar
//
//  Created by Roman on 01.07.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    addGradient(topColor: #colorLiteral(red: 0.9336795534, green: 0.9662127212, blue: 0.8031088379, alpha: 1), bottomColor: #colorLiteral(red: 0.9662127212, green: 0.6995191055, blue: 0.6755723192, alpha: 1))
    generateTabBar()
    setupTabBar()
    }
    
    private func generateTabBar() {
        viewControllers = [generateViewController(viewController: BrainViewController(), title: "Brain", image: UIImage(systemName: "brain")),
                           generateViewController(viewController: EyesViewController(), title: "Eyes", image: UIImage(systemName: "eyes")),
                           generateViewController(viewController: NoseViewController(), title: "Nose", image: UIImage(systemName: "nose.fill")),
                           generateViewController(viewController: MouthViewController(), title: "Mouth", image: UIImage(systemName: "mouth.fill"))]
    }
    
    private func generateViewController(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setupTabBar(){
        
        let positionX: CGFloat = 10
        let positionY: CGFloat = 14
        
        let roundLayer = CAShapeLayer()
        
        let width = tabBar.bounds.width - positionX * 2
        let height = tabBar.bounds.height + positionY * 2
        
        let bezierPath = UIBezierPath(roundedRect: CGRect(
            x: positionX,
            y: tabBar.bounds.minX - positionY,
            width: width, height: height),
            cornerRadius: height / 2)
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = UIColor.tabBarColor.cgColor
        tabBar.unselectedItemTintColor = .tabBarItemUnselected
        tabBar.selectedImageTintColor = .tabBarItemSelected
    }
}

