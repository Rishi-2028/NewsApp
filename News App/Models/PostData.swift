//
//  PostData.swift
//  News App
//
//  Created by Rishi on 18/02/2023.
//

import Foundation

struct Results: Codable {
    let hits : [Post]
}
struct Post: Codable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
