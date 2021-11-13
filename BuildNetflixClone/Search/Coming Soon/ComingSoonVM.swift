//
//  ComingSoonVM.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 13/11/21.
//

import Foundation

class ComingSoonVM: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
