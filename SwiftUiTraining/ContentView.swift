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
                    .foregroundStyle(.red)
                    .imageScale(.large)
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.green)
            }
            Text("Good evening, world!")
                .font(.title)
                .fontWeight(.black)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    ContentView()
}
