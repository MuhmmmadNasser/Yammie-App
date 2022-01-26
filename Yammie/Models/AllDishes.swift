//
//  AllDishes.swift
//  Yammie
//
//  Created by Mohamed on 22/11/2021.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [Dishcategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
