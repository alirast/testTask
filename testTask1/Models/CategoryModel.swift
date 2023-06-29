//
//  CategoryModel.swift
//  testTask1
//
//  Created by N S on 29.06.2023.
//

import Foundation

struct Category: Decodable {
    static let allCategories: [Category] = Bundle.main.decode(file: "Categories.json")
    static let sampleCategory: Category = allCategories[0]
    let id: Int
    let name: String
    let imageURL: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case imageURL = "image_url"
    }
}

struct CategoryResponse: Decodable {
    let categories: [Category]
}
