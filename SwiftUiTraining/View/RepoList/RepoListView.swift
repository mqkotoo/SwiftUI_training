//
//  ContentView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct RepoListView: View {
    @State private var store = ReposStore()
    var body: some View {
        NavigationStack {
            if store.repos.isEmpty {
                ProgressView("loading...")
            } else {
                List(store.repos) { repo in
                    NavigationLink(value: repo) {
                        RepoRow(repo: repo)
                    }
                }
                .navigationTitle("Repositories")
                .navigationDestination(for: Repo.self) { repo in
                    RepoDetailView(repo: repo)
                }
            }
        }
        .task {
            await store.loadRepos()
        }
    }
}

@Observable
@MainActor
class ReposStore {
    private(set) var repos = [Repo]()
    func loadRepos() async {
        try? await Task.sleep(for: .seconds(2))
        repos = [.mock1, .mock2, .mock3, .mock4, .mock5]
    }
}

#Preview {
    RepoListView()
}
