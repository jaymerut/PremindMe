//
//  Module.swift
//  Core
//
//  Created by Jayme Rutkoski on 4/24/22.
//

import Foundation

public class Module {
    public static var bundle : () -> Bundle  = { Bundle(for: Module.self) }
}
