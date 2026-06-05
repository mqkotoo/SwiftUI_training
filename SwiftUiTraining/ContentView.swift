//
//  ContentView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(.gitHubMark)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 44.0, height: 44.0)
            VStack(alignment: .leading) {
                Text("Owner Name")
                    .font(.caption)
                Text("Repository Name")
                    .font(.body)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    ContentView()
}
