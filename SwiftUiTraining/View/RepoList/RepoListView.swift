//
//  ContentView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct RepoListView: View {
    @Environment(ReposStore.self) private var store
    var body: some View {
        NavigationStack {
            Group{
                if store.error != nil {
                    VStack {
                        Text("Failed to load repositories")
                        Button(
                            action: {
                                Task {
                                    // リトライボタンをタップしたときに再度リクエストを投げる
                                    await store.loadRepos()
                                }
                            },
                            label: {
                                Text("Retry")
                            }
                        )
                        .padding()
                    }
                } else
                if store.isLoading {
                    ProgressView("loading...")
                } else {
                    List(store.repos) { repo in
                        NavigationLink(value: repo) {
                            RepoRow(repo: repo)
                        }
                    }
                }
            }
            .navigationTitle("Repositories")
            .navigationDestination(for: Repo.self) { repo in
                RepoDetailView(repo: repo)
            }
        }
        .task {
            await store.loadRepos()
        }
    }
}

#Preview {
    RepoListView()
        .environment(ReposStore())
}
