//
//  Trailer.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 7/11/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
