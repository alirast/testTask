//
//  CategoryViewModel.swift
//  testTask1
//
//  Created by N S on 29.06.2023.
//

import Foundation

class CategoryViewModel: ObservableObject {
    @Published var categoriesArray: [Category] = []
    func fetch() {
        let categories: [Category] = Bundle.main.decode(file: "Categories.json")
        categoriesArray = categories
        for category in categories {
            print(category.id)
            print(category.name)
            print(category.imageURL)
        }
    }
}
