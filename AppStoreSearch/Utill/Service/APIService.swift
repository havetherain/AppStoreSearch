//
//  APIService.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/10.
//  Copyright © 2020 김지우. All rights reserved.
//

import Foundation

struct APIService {
    static func fetchApps(searchText: String, completion: @escaping ([ApplicationInfo]) -> Void) {
        let urlString = "https://itunes.apple.com/search?term=\(searchText)&country=kr&entity=software"
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, response, err in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]

                let results = json?["results"] as? [Any]
                guard let searchResults = results as? [[String: Any]] else { return }
                let apps = searchResults.map({ ApplicationInfo(detailDic: $0) })
                completion(apps)
            } catch let err {
                print("JSONSerialize err: ", err)
            }
        }.resume()
    }

    func fetchAppList(completion: @escaping ([ApplicationInfo]) -> Void) {
        let urlString = "https://itunes.apple.com/kr/rss/topfreeapplications/limit=50/genre=6015/json"
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data, response, err in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]

                guard let feed = json?["feed"] as? [String: Any] else { return }
                guard let entries = feed["entry"] as? [[String: Any]] else { return }

                let apps = entries.map({ ApplicationInfo(dic: $0) })
                completion(apps)
            } catch {
                print("Something went wrong")
            }
        }.resume()
    }

    func fetchAppDetailInfo(app: ApplicationInfo?, completion: @escaping ([String: Any]) -> Void) {

        guard let app = app else { return }
        guard let appID = app.appID else { return }
        let urlString = "https://itunes.apple.com/lookup?id=\(appID)&country=kr"

        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, err in
            guard let data = data else { return }
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]

                let results = json?["results"] as? [Any]
                guard let searchResult = results?[0] as? [String: Any] else { return }
                completion(searchResult)
            } catch let err {
                print("JSONSerialize err: ", err)
            }
        }.resume()
    }
}
