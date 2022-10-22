//
//  ContentView.swift
//  AissShop
//
//  Created by Hugo on 22.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("AppWhite")
                .ignoresSafeArea()
            VStack {
                TopNavigation()
                // scroll
                ScrollView {
                    CollectionImage()
                    PopularAndItem()
                    LazyVGrid(columns: [GridItem(.flexible(minimum: 120)),
                                        GridItem(.flexible(minimum: 120))], spacing: 35) {
                        ClothContainer(image: "tshirt1white", title: "White T-Shirt", type: "T-Shirt", price: "12.99")
                        ClothContainer(image: "tshirt2white", title: "White T-Shirt", type: "T-Shirt", price: "10.99")
                        ClothContainer(image: "pants3blue", title: "Blue Pants", type: "Women Pants", price: "34.99")
                        ClothContainer(image: "bag4black", title: "Black Bag", type: "Women Bag", price: "29.99")
                    }
                                        .padding(.horizontal)
                }
                Spacer()
                BottomNavigation()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// top navigation struct
struct TopNavigation: View {
    var body: some View {
        HStack(alignment: .center) {
            Button(action: {}) {
                Image(systemName: "line.3.horizontal")
                    .foregroundColor(Color("AppGray"))
                    .scaleEffect(1.5)
            }
            Spacer()
            Text("Aiss Studio")
                .font(.system(size: 19, design: .serif))
            Spacer()
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color("AppGray"))
                    .scaleEffect(1.5)
            }
        }
        .padding()
    }
}
// main image struct
struct CollectionImage: View {
    var body: some View {
        ZStack {
            Image("NewCollection")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: 300)
            
            VStack {
                Text("New Collection For Fall")
                    .padding()
                    .font(.largeTitle)
                    .foregroundColor(Color("AppWhite"))
                    .fontWeight(.bold)
            }
            .padding(.top, 90)
        }
    }
}
// main text struct
struct PopularAndItem: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("Popular")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(Color("AppGray"))
            Spacer()
            Link(destination: URL(string: "https://www.google.com")!) {
                Text("18 Item")
                    .fontWeight(.light)
                    .underline()
                Image(systemName: "arrow.up.right")
                
                    .scaleEffect(0.6)
                    .fontWeight(.semibold)
            }
            .foregroundColor(Color("AppGray"))
        }
        .padding(.top, 10)
        .padding(.horizontal, 22)
    }
}

struct BottomNavigation: View {
    var body: some View {
        HStack(spacing: 60) {
            BottomNavigationButton(isSelected: true, icon: "house.fill")
            BottomNavigationButton(isSelected: false, icon: "square.grid.2x2")
            BottomNavigationButton(isSelected: false, icon: "cart")
            BottomNavigationButton(isSelected: false, icon: "creditcard")
        }
        .scaleEffect(1.25)
        .padding(.horizontal, 22)
        .padding([.top, .bottom], 22)
        .frame(maxWidth: .infinity)
        
    }
}

struct BottomNavigationButton: View {
    var isSelected: Bool = false
    var icon: String
    var body: some View {
        Button(action: {}) {
            Image(systemName: icon)
                .foregroundColor(isSelected ? Color("AppGray") : .gray.opacity(0.7))
        }
    }
}

struct ClothContainer: View {
    
    var image: String
    var title: String
    var type: String
    var price: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 250)
            VStack(alignment: .leading, spacing: 7) {
                Text(title)
                    .font(.system(size: 18, weight: .medium, design: .default))
                Text(type)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .opacity(0.4)
                Text("$\(price)")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
            }
        }
    }
}
