//
//  SwiftUiTrainingApp.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

@main
struct SwiftUiTrainingApp: App {
    @State private var store = ReposStore()

    var body: some Scene {
        WindowGroup {
            RepoListView()
                .environment(store)
        }
    }
}
