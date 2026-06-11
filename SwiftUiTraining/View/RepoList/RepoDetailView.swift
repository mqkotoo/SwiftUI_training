//
//  RepoDetailView.swift
//  SwiftUiTraining
//
//  Created by makoto.a.murakami on 2026/06/10.
//

import Foundation
import SwiftUI

struct RepoDetailView: View {
    let repo: Repo
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(.gitHubMark)
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text(repo.owner.name)
                        .font(.caption)
                }
                Text(repo.name)
                    .font(.body)
                    .fontWeight(.bold)
                // Optional Binding を使って、descriptionがnilじゃない場合のみUIを表示する
                if let description = repo.description {
                    Text(description)
                } else {
                    Text("No description")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                HStack {
                    Image(systemName: "star")
                    Text("\(repo.stargazersCount) stars")
                }
                .padding(.top, 8)
                Spacer()
            }
            Spacer()
        }
        .padding(8)
    }
}

#Preview {
    RepoDetailView(repo: .mock1)
}
