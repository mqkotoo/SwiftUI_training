//
//  ContentView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "globe")
                    .foregroundColor(Color.red)
                    .imageScale(.large)
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.green)
            }
            Text("Good evening, world!")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.red)
        }
    }
}

#Preview {
    ContentView()
}
