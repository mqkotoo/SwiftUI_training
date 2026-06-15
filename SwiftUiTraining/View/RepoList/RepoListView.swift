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

#Preview {
    RepoListView()
}
