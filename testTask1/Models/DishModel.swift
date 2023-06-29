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
    let imageURL: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case price = "price"
        case description = "description"
        case imageURL = "image_url"
    }
}
