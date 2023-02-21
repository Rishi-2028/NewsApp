//
//  ContentView.swift
//  News App
//
//  Created by Rishi on 18/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            
            .navigationTitle("News App")
            
            
        }
        .onAppear {
            self.networkManager.fetchData()
        }
        
    }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}









