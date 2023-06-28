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
        let api = "https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54"
        guard let apiURL = URL(string: api) else { return }
        URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
            guard let data = data, error == nil else { return }
            do {
                self.categories = try JSONDecoder().decode([Category].self, from: data)
            } catch {
                print("failed to decode", error)
            }
        }.resume()
    }
}
