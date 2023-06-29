//
//  DishViewModel.swift
//  testTask1
//
//  Created by N S on 29.06.2023.
//

import Foundation

class DishViewModel: ObservableObject {
    @Published var dishes: [Dish] = []
    func fetchDishes(for category: Category) {
        guard let jsonFile = Bundle.main.path(forResource: "Dishes", ofType: "json") else { return }
        guard let jsonData = jsonFile.data(using: .utf8) else { fatalError("Failed to convert JSON string to data in dishes.") }
        do {
            let response = try JSONDecoder().decode(DishesResponse.self, from: jsonData)
            for dish in response.dishes {
                print("\(dish.id)")
                print("\(dish.name)")
                print("\(dish.price)")
                print("\(dish.description)")
                print("\(dish.imageURL)")
            }
        } catch {
            print("failed to decode json \(error)")
        }
    }
}
