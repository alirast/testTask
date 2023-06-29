//
//  CartView.swift
//  testTask1
//
//  Created by N S on 28.06.2023.
//

import SwiftUI

struct CartView: View {
    var smb = CategoryViewModel()

    var body: some View {
        VStack {
            Spacer()
            Button {
                print("Оплатить")
                smb.fetchCategories()
            } label: {
                Text("Оплатить")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }.padding(.bottom)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
