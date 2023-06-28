//
//  DishModel.swift
//  testTask1
//
//  Created by N S on 29.06.2023.
//

import Foundation

struct Dish: Decodable {
    let id: Int
    let name: String
    let price: Int
    let description: String
    let image_url: String
}
