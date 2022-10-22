//
//  ContentView.swift
//  AissShop
//
//  Created by Hugo on 22.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopNavigation()
            CollectionImage()
            PopularAndItem()
            Spacer()
            BottomNavigation()
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
                .clipShape(Rectangle())
                .frame(maxWidth: .infinity)
                .frame(height: 290)
                .scaledToFit()
            
            VStack {
                Text("New Collection For Fall")
                    .padding()
                    .foregroundColor(.white)
                    .background(.black.opacity(0.3))
                    .cornerRadius(12)
                    .fontWeight(.medium)
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
        .background(.white)
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
                .foregroundColor(isSelected ? Color("AppGray") : .gray)
        }
    }
}
