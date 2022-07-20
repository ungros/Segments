//
//  SceneDelegate.swift
//  Custom TabBar
//
//  Created by Roman on 01.07.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
        
        guard let mainView = (scene as? UIWindowScene) else { return }
       
        window = UIWindow(windowScene: mainView)
        window?.makeKeyAndVisible()
        window?.rootViewController = MainTabBarViewController()
     
    }
}

