//
//  CategoryViewModel.swift
//  testTask1
//
//  Created by N S on 29.06.2023.
//

import Foundation

class CategoryViewModel: ObservableObject {
    @Published var categories: [Category] = []
    func fetchCategories() {
        //guard let jsonFile = Bundle.main.url(forResource: "Categories", withExtension: "json") else { return }
        guard let jsonFile = Bundle.main.path(forResource: "Categories", ofType: "json") else { return }
        guard let jsonData = jsonFile.data(using: .utf8) else { fatalError("Failed to convert JSON string to data in categories.") }
        print(jsonData)
        do {
            let response = try JSONDecoder().decode(CategoryResponse.self, from: jsonData)
            for category in response.categories {
                print("\(category.id)")
                print("\(category.name)")
                print("\(category.imageURL)")
            }
        } catch {
            print("failed to decode json \(error)")
        }
    }
}
