//
//  DetailView.swift
//  News App
//
//  Created by Rishi on 21/02/2023.
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
        DetailView(url: "https://openai.com/blog/chatgpt")
    }
}


