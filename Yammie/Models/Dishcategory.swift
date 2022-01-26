//
//  Dishcategory.swift
//  Yammie
//
//  Created by Mohamed on 12/11/2021.
//

import Foundation

struct Dishcategory: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
