//
//  Order.swift
//  Yammie
//
//  Created by Mohamed on 16/11/2021.
//

import Foundation

struct Order: Decodable{
    let id: String?
    let name: String?
    let dish: Dish?
}
