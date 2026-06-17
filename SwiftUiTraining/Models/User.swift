//
//  User.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/08.
//

import Foundation

struct User: Decodable, Hashable {
    let name: String
    private enum CodingKeys: String, CodingKey {
        case name = "login"
    }
}
