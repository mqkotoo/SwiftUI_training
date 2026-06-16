//
//  Repo.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/08.
//

import Foundation

struct Repo: Decodable, Identifiable, Hashable {
    var id: Int
    var name: String
    var owner: User
    var description: String?
    var stargazersCount: Int
}
