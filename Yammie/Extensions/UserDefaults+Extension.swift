//
//  UserDefaults+Extension.swift
//  Yammie
//
//  Created by Mohamed on 22/11/2021.
//

import Foundation

extension UserDefaults {
    
    private enum UserDefaults: String {
        case hasOnboarded
    }
    
    var hasOnboarded: Bool {
        get{
            bool(forKey: UserDefaults.hasOnboarded.rawValue)
        }
        set{
            setValue(newValue, forKey: UserDefaults.hasOnboarded.rawValue)
        }
    }
    
    
    
}
