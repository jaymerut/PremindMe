//
//  UIFont+Extensions.swift
//  Core
//
//  Created by Jayme Rutkoski on 4/23/22.
//

import UIKit

public extension Fonts {
    static func install(from bundles: [Bundle] = [ Environment.bundle() ] ) {
        Fonts.installed = true
        for each in Fonts.allCases {
            for bundle in bundles {
                if let cfURL = bundle.url(forResource:each.rawValue, withExtension: "ttf") {
                    CTFontManagerRegisterFontsForURL(cfURL as CFURL, .process, nil)
                } else {
                    assertionFailure("Could not find font:\(each.rawValue) in bundle:\(bundle)")
                }
            }
        }
    }
    
    func size(_ size : CGFloat) -> UIFont {
        if Fonts.installed == false {
            Fonts.install()
        }
        return UIFont(name: self.rawValue, size:  size)!
    }
}
