//
//  MainView.swift
//  testTask1
//
//  Created by N S on 28.06.2023.
//

import SwiftUI

struct MainView: View {
    private var categories: [Category] = Category.allCategories
    @ObservedObject var mainViewModel = CategoryViewModel()
    @EnvironmentObject var coordinator: Coordinator
    
    @State var isScroll = false
    var body: some View {
        
        ScrollView {
            ForEach(categories, id: \.id) { category in
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .foregroundColor(Color.red)
                    .frame(maxWidth: 343)
                    .frame(height: 148)
                    .padding(5)
                    .overlay {
                        VStack(alignment: .leading) {
                            Text("\(category.id) \(category.name)")
                        }
                    }
            }
            
            Button("press", action: fetchingDataFromViewModel)
        }
        
        /*ScrollView {
            ForEach(categories, id: \.id) { category in
                NavigationLink(destination: CategoryView()) {
                    VStack(alignment: .leading) {
                        Text("\(category.id) \(category.name)")
                    }.padding(6)
                }
            }
        }
  
            ScrollView {
                ForEach(0..<5) { item in
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .foregroundColor(Color.red)
                        .frame(maxWidth: 343)
                        .frame(height: 148)
                        .padding(5)
                        .overlay {
                        VStack(alignment: .leading) {
                            Text("Asia")
                        }
                    }
                }
            }*/
    }
    
    
    func fetchingDataFromViewModel() {
        print("fetch")
     
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
