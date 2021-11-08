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
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ ($0.movieType == .movie) && ($0.genre == genre)})
        case .tvShows:
            return (movies[cat] ?? []).filter({ ($0.movieType == .tvShow) && ($0.genre == genre)})
        case .myList:
            //
            return movies[cat] ?? []
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedies"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-fi Movies"] = exampleMovies.shuffled()
    }
}
