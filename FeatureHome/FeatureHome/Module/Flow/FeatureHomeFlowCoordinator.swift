//
//  FeatureHomeFlowCoordinator.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/24/22.
//

import UIKit

protocol FeatureHomeFlowCoordinatorDependencies  {
    func makeHomeViewController() -> HomeViewController
}

final class FeatureHomeFlowCoordinator {
        
    private weak var navigationController: UINavigationController?
    private let dependencies: FeatureHomeFlowCoordinatorDependencies

    private weak var homeVC: HomeViewController?

    init(navigationController: UINavigationController,
         dependencies: FeatureHomeFlowCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }

    func start() {

        let vc = dependencies.makeHomeViewController()

        navigationController?.pushViewController(vc, animated: false)
        homeVC = vc
    }

    private func showHome() {
        let vc = dependencies.makeHomeViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
