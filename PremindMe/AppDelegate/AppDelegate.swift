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

    let diContainer = DIContainer()
    var premindMeFlowCoordinator: PremindMeFlowCoordinator?
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationController = UINavigationController()

        window?.rootViewController = navigationController
        premindMeFlowCoordinator = PremindMeFlowCoordinator(navigationController: navigationController,
                                                        diContainer: diContainer)
        /*
        let homeTabBarItem = UITabBarItem()
        homeTabBarItem.title = "Home"
        
        let homeModule = Module.init(dependencies: ModuleDependencies())
        let homeNC = UINavigationController.init()
        homeModule.createHomeUI(in: homeNC)
        
        homeNC.tabBarItem = homeTabBarItem
        
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = [homeNC]
        
        tabBarVC.selectedViewController = homeNC
         */
        
        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    
        return true
    }

}

