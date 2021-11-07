//
//  Episode.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 3/11/21.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailURLString: String
    var description: String
    var length: Int
    
    var videoURL: URL
    
    var thumbnailURL: URL  {
        return URL(string: thumbnailURLString)!
    }
    
}
