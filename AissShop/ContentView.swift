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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopNavigation: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "line.3.horizontal")
                .scaleEffect(1.5)
            Spacer()
            Text("Aiss Studio")
                .font(.system(size: 19, design: .serif))
            Spacer()
            Image(systemName: "magnifyingglass")
                .scaleEffect(1.5)
        }
        .padding()
    }
}

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
