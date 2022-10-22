//
//  ProductDetailedView.swift
//  AissShop
//
//  Created by Hugo on 22.10.22.
//

import SwiftUI

struct ProductDetailedView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color("AppWhite")
                .ignoresSafeArea()
            VStack {
                HStack(alignment: .center) {
                    Button(action: {presentationMode.wrappedValue.dismiss()}) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("AppGray"))
                            .scaleEffect(1.6)
                    }
                    Spacer()
                    Text("Aiss Studio")
                        .font(.system(size: 19, design: .serif))
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "cart")
                            .foregroundColor(Color("AppGray"))
                            .scaleEffect(1.6)
                    }
                }
                .padding(23)
                CustomDivider()
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct ProductDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailedView()
    }
}

struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 1.5)
            .cornerRadius(16)
            .padding(.horizontal, 22)
    }
}
