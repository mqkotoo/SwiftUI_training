//
//  Repo+mock.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/10.
//

extension Repo {
    static let mock1 = Repo(
        id: 1,
        name: "Test Repo1",
        owner: .user1,
        stargazersCount: 10
    )
    static let mock2 = Repo(
        id: 2,
        name: "Test Repo2",
        owner: .user2,
        description: "This is a good code sample",
        stargazersCount: 10
    )
    static let mock3 = Repo(
        id: 3,
        name: "Test Repo3",
        owner: .user3,
        description: "This is a good code sample",
        stargazersCount: 10
    )
    static let mock4 = Repo(
        id: 4,
        name: "Test Repo4",
        owner: .user4,
        stargazersCount: 10
    )
    static let mock5 = Repo(
        id: 5,
        name: "Test Repo5",
        owner: .user5,
        description: "This is a good code sample",
        stargazersCount: 10
    )
}
