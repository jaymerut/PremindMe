//
//  AppDelegate.swift
//  PremindMe
//
//  Created by Jayme Rutkoski on 4/13/22.
//

import UIKit
import FeatureHome

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let homeTabBarItem = UITabBarItem()
        homeTabBarItem.title = "Home"
        
        let homeVC = HomeViewController()
        homeVC.tabBarItem = homeTabBarItem
        
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = [homeVC]
        
        tabBarVC.selectedViewController = homeVC
        
        window = UIWindow()
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
    
        return true
    }

}

