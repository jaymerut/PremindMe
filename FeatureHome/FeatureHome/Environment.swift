//
//  Environment.swift
//  FeatureHome
//
//  Created by Jayme Rutkoski on 4/23/22.
//

import Foundation

public class Environment {
    public static var bundle : () -> Bundle  = { Bundle(for: Environment.self) }
}
