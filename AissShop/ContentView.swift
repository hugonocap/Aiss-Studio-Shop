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

