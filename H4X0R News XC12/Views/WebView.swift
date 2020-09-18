//
//  WebView.swift
//  H4K0R News-SwiftUI
//
//  Created by Kwin Sirikwin on 17/9/20.
//  Copyright © 2020 Kwin Sirikwin. All rights reserved.
//

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeURLString = urlString else { return }
        guard let url = URL(string: safeURLString) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
