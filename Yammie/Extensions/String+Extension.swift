//
//  String+Extension.swift
//  Yammie
//
//  Created by Mohamed on 12/11/2021.
//

import Foundation

extension String{
    var asUrl: URL?{
        return URL(string: self)
    }
}
