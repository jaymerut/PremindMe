//
//  Module.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/24/22.
//

import UIKit

public struct ModuleDependencies {
    
    public init () {

    }
}

public class Module {
    public static var bundle : () -> Bundle  = { Bundle(for: Module.self) }
    
    private let diContainer: DIContainer
    
    public init(dependencies: ModuleDependencies) {
        self.diContainer = DIContainer(dependencies: dependencies)
    }
    
    public func createHomeUI(in navigationController: UINavigationController) {
        let flow = diContainer.makeFeatureHomeFlowCoordinator(navigationController: navigationController)
        flow.start()
    }
}
