//
//  DetailView.swift
//  H4K0R News-SwiftUI
//
//  Created by Kwin Sirikwin on 17/9/20.
//  Copyright © 2020 Kwin Sirikwin. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.apple.com")
    }
}
