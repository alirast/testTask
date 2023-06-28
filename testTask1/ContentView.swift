//
//  ContentView.swift
//  testTask1
//
//  Created by N S on 28.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                MainView().tabItem() {
                    Image("main")
                    Text("Главная")
                }
                CategoryView().tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
                CartView().tabItem {
                    Image("cart")
                    Text("Корзина")
                }
                ProfileView().tabItem {
                    Image("account")
                    Text("Аккаунт")
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Image("mapPin").resizable().font(Font.system(.largeTitle).bold()).frame(width: 30, height: 30)
                    
                    VStack(alignment: .leading) {
                        Text("Санкт-Петербург").font(.system(size: 20)).fontWeight(.bold)
                        Text(getCurrentDate()).font(.caption).foregroundColor(.gray)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("profile").resizable().frame(width: 45, height: 45).clipShape(Circle())

                }
            }
        }
    }
    private func getCurrentDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM, yyyy"
        formatter.locale = Locale(identifier: "ru_RU")
        return formatter.string(from: Date())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
