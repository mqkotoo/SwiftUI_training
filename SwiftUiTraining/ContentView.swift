//
//  ContentView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/03.
//

import SwiftUI

struct ContentView: View {
    private let mockRepos = [
        Repo(
            id: 1,
            name: "Test Repo1",
            owner: User(name: "Test User1")
        ),
        Repo(
            id: 2,
            name: "Test Repo2",
            owner: User(name: "Test User2")
        ),
        Repo(
            id: 3,
            name: "Test Repo3",
            owner: User(name: "Test User3")
        ),
        Repo(
            id: 4,
            name: "Test Repo4",
            owner: User(name: "Test User4")
        ),
        Repo(
            id: 5,
            name: "Test Repo5",
            owner: User(name: "Test User5")
        )
    ]
    var body: some View {
        List(mockRepos) { repo in
            HStack {
                Image(.gitHubMark)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44.0, height: 44.0)
                VStack(alignment: .leading) {
                    Text(repo.owner.name)
                        .font(.caption)
                    Text(repo.name)
                        .font(.body)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
