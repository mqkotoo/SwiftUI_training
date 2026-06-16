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
    // decoderに変換設定付与
    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }

    func loadRepos() async {
        let url = URL(string: "https://api.github.com/orgs/mixigroup/repos")!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.allHTTPHeaderFields = [
            "Accept": "application/vnd.github+json"
        ]
        // GitHub API のリクエスト数制限(60回/h)回避のためのキャッシュ設定 ※研修内容とは直接関係ありません
        urlRequest.cachePolicy = .returnCacheDataElseLoad
        do {
            // データ取得
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            // デコード処理
            repos = try decoder.decode([Repo].self, from: data)
        } catch {
            // TODO: エラーハンドリングする
            print(error)
        }
    }
}
