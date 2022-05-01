//
//  DIContainer.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/24/22.
//

import UIKit

final class DIContainer {
    
    private let dependencies: ModuleDependencies
    
    init(dependencies: ModuleDependencies) {
        self.dependencies = dependencies
    }
    
    func makeFeatureHomeFlowCoordinator(navigationController: UINavigationController) -> FeatureHomeFlowCoordinator {
        return FeatureHomeFlowCoordinator(navigationController: navigationController, dependencies: self)
    }
}

extension DIContainer : FeatureHomeFlowCoordinatorDependencies {
    func makeHomeViewController() -> HomeViewController {
        return HomeViewController.init()
    }
}
