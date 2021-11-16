//
//  PreviewVM.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 16/11/21.
//

import Foundation

class PreviewVM: ObservableObject {
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
}
