//
//  Coordinator.swift
//  testTask1
//
//  Created by N S on 29.06.2023.
//

import Foundation

enum Screen {
    case categoryScreen
    case dishScreen(Category)
    case cartScreen
}

final class Coordinator: ObservableObject {
    
    @Published var currentScreen: Screen = .categoryScreen
    
    func showDishScreen(of category: Category) {
        currentScreen = .dishScreen(category)
    }
    
    func showCartScreen() {
        currentScreen = .cartScreen
    }
}
