//
//  PremindMeFlowCoordinator.swift
//  PremindMe
//
//  Created by Jayme Rutkoski on 4/30/22.
//

import UIKit

final class PremindMeFlowCoordinator {
        
    private weak var navigationController: UINavigationController?
        private let diContainer: DIContainer
        
        init(navigationController: UINavigationController,
             diContainer: DIContainer) {
            self.navigationController = navigationController
            self.diContainer = diContainer
        }
        
        func start() {
            guard let navigationController = navigationController else { return }

            let featureHomeModule = diContainer.makeFeatureHomeModule()
            featureHomeModule.createHomeUI(in: navigationController)
        }

}

