//
//  ProductDetailedView.swift
//  AissShop
//
//  Created by Hugo on 22.10.22.
//

import SwiftUI

struct ProductDetailedView: View {
    var body: some View {
        ZStack {
            Color("AppWhite")
                .ignoresSafeArea()
            VStack {
                DetailedTopNavBar()
                ScrollView {
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [GridItem(.flexible(minimum: 700))], alignment: .top, spacing: 0) {
                            Image("tshirt2white")
                                .resizable()
                                .frame(width: 450, height: 650)
                                .aspectRatio(contentMode: .fit)
                                .padding(0)
                            Image("tshirt22white")
                                .resizable()
                                .frame(width: 450, height: 650)
                                .aspectRatio(contentMode: .fit)
                            
                        }
                        .padding(.vertical, -30)
                    }
                    VStack {
                        ProductInfo()
                        Spacer()
                        ProductDescription()
                        ProductBuyButton()
                    }
                    .padding(.horizontal)
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
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
            .foregroundColor(Color("AppGray"))
    }
}

struct DetailedTopNavBar: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
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
            .padding(25)
        }
}

struct ProductInfo: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("White T-Shirt")
                .font(.system(size: 26, weight: .medium, design: .rounded))
            Spacer()
            Text("$ 10.99")
                .font(.system(size: 21, weight: .light, design: .rounded))
        }
        HStack(spacing: 20) {
            Spacer()
            Button(action: {}) {
                Text("S")
                    .fontWeight(.thin)
            }
            Button(action: {}) {
                Text("M")
                    .fontWeight(.thin)
            }
            Button(action: {}) {
                Text("L")
                    .fontWeight(.medium)
            }
            Button(action: {}) {
                Text("XL")
                    .fontWeight(.thin)
            }
        }
        .padding(.vertical, 1)
        .font(.title2)
        .foregroundColor(Color("AppGray"))
    }
}

struct ProductDescription: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Eum eum eius tenetur aliquam vero et natus voluptas voluptatem cupiditate qui laboriosam et modi a non sint inventore deserunt dolorum cum hic assumenda aut perferendis voluptatibus nihil eveniet et neque voluptatem illum est omnis dolores eum Eum eum eius tenetur aliquam vero et natus voluptas voluptatem cupiditate qui laboriosam et modi a non sint inventore deserunt dolorum cum hic assumenda aut perferendis voluptatibus nihil eveniet et neque voluptatem illum est omnis dolores eum ")
                    .lineLimit(5)
                    .foregroundColor(Color("AppGray"))
                    .opacity(0.7)
                    .padding(.vertical, 25)
                    .overlay(
                        LinearGradient(gradient:Gradient(colors: [Color("AppWhite"), Color.clear, Color.clear]), startPoint: .bottom, endPoint: .top)
                            .allowsHitTesting(true), alignment: .bottom)
            }
        }
    }
}

struct ProductBuyButton: View {
    var body: some View {
        Button(action: {}) {
            Text("Buy Now")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 25)
                .font(.title2)
                .fontWeight(.semibold)
                .background(.black)
                .foregroundColor(Color("AppWhite"))
                .cornerRadius(16)
        }
        .padding(.bottom)
    }
}
