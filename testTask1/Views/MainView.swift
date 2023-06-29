//
//  MainView.swift
//  testTask1
//
//  Created by N S on 28.06.2023.
//

import SwiftUI

struct MainView: View {
    //private var categories: [Category] = Category.allCategories
    @State var isScroll = false
    var body: some View {
  
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
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
