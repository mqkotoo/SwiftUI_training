//
//  ContentView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct RepoListView: View {
    @State private var mockRepos: [Repo] = []
    var body: some View {
        NavigationStack {
            if mockRepos.isEmpty {
                ProgressView("loading...")
            } else {
                List(mockRepos) { repo in
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
            await loadRepos()
        }
    }
    private func loadRepos() async {
        // 1秒後にモックデータを読み込む
        try? await Task.sleep(for: .seconds(2))
        mockRepos = [
            .mock1, .mock2, .mock3, .mock4, .mock5
        ]
    }
}

#Preview {
    RepoListView()
}
