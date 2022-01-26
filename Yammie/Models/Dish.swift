//
//  Dish.swift
//  Yammie
//
//  Created by Mohamed on 15/11/2021.
//

import Foundation

struct Dish: Decodable {
    let id, name, description, image: String?
    //description //desciption
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    }
}
