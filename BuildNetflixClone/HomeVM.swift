//
//  HomeVM.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 3/11/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map( { String($0)})
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = [exampleMovie1]
    }
}
