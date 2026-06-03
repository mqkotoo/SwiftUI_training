//
//  ContentView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct ContentView: View {
    @State private var number: Int = 0
    var body: some View {
        NavigationStack{
            VStack {
                Text("ボタンを押した回数↓")
                Text("\(number)")
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .overlay(alignment: .bottomTrailing){
                ButtonView(imageName: "plus") {
                    number += 1
                }
            }
            .overlay(alignment: .bottomLeading){
                ButtonView(imageName: "minus") {
                    number -= 1
                }
            }
            .overlay(alignment: .bottom){
                ButtonView(imageName: "arrow.trianglehead.counterclockwise") {
                    number = 0
                }
            }
            .padding()
            .navigationTitle("カウンター")
        }
    }
}

#Preview {
    ContentView()
}
