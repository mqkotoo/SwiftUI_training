//
//  ReposStore.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/15.
//

import Foundation

@Observable
@MainActor
final class ReposStore {
    private(set) var repos = [Repo]()

    func loadRepos() async {
        try? await Task.sleep(for: .seconds(2))
        repos = [.mock1, .mock2, .mock3, .mock4, .mock5]
    }
}
