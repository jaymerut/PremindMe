//
//  DIContainer.swift
//  PremindMe
//
//  Created by Jayme Rutkoski on 4/30/22.
//

import FeatureHome

final class DIContainer {
    
    func makeFeatureHomeModule() -> FeatureHome.Module {
        let dependencies = FeatureHome.ModuleDependencies()
        return FeatureHome.Module(dependencies: dependencies)
    }
}
