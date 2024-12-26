//
//  DetailView.swift
//  H4X0R News
//
//  Created by evo on 26/12/24.
//

import SwiftUI

struct DetailView: View {

    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "http://www.google.com")
}
