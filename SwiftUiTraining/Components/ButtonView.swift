//
//  Button.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct ButtonView: View {
    let imageName: String
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundStyle(.white)
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(.circle)
        }
    }
}
