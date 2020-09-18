//
//  NetworkManager.swift
//  H4K0R News-SwiftUI
//
//  Created by Kwin Sirikwin on 17/9/20.
//  Copyright © 2020 Kwin Sirikwin. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        guard let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let safeData = data, error == nil else { return }
            let decoder = JSONDecoder()
            do {
                let results = try decoder.decode(Results.self, from: safeData)
                DispatchQueue.main.async {
                    self.posts = results.hits
                    
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
