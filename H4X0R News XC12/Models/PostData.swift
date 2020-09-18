//
//  PostData.swift
//  H4K0R News-SwiftUI
//
//  Created by Kwin Sirikwin on 17/9/20.
//  Copyright © 2020 Kwin Sirikwin. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { return objectID }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
