//
//  GenerateMovies.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 9/11/21.
//

import Foundation

func generateMovies(_ count: Int) -> [Movie] {
    guard count > 0 else { return []}
    
    var allMovies: [Movie] = []

    for _ in 0..<count {
        let id = UUID().uuidString
        
        let nameLength = Int.random(in: 9..<20)
        let name = randomString(length: nameLength)
        let randThumbnail = Int.random(in: 0...9)
        let thumbnail = URL(string: "https://picsum.photos/300/10\(randThumbnail)")!
        
        let year = Int.random(in: 2000...2022)
        
        let cast = "Leonardo, Donatello, Rafael, Michelangelo"
        let creators = "Oscar, Pacquaio"
        let categories = ["Comedy", "What's New"]
        
        let headline = "Watch now!"
        
        let numSeasons = Int.random(in: 1...3)
        
        var allEpisodes: [Episode] = []
        
        for i in 1...numSeasons {
            allEpisodes.append(contentsOf: generateEpisodes(5, forSeason: i))
        }
        
        let epiNameLength = Int.random(in: 9...20)
        let epiname = randomString(length: epiNameLength)
        
        let epidesclength = Int.random(in: 150...200)
        let epidesc = randomString(length: epidesclength)
        let defEpiInfo = CurrentEpisodeInfo(episodeName: epiname, description: epidesc, season: 1, episode: 1)
        
        let allTrailers = generateTrailers(3)
        
        let moreLikeThis = exampleMovies
        
        let movie = Movie(id: id, name: name, thumbnailURL: thumbnail, categories: categories, genre: .AllGenres, year: year, rating: "PG-13", numberOfSeasons: numSeasons, currentEpisode: defEpiInfo, defaultEpisodeInfo: defEpiInfo, creators: creators, cast: cast, moreLikeThisMovie: moreLikeThis, episodes: allEpisodes, promotionHeadline: headline, trailers: allTrailers)
        
        allMovies.append(movie)
        
    }
    return allMovies
}

func generateTrailers(_ count: Int) -> [Trailer] {
    var allTrailers: [Trailer] = []
    
    for _ in 0..<count {
        let id = UUID().uuidString
        
        let nameLength = Int.random(in: 9..<20)
        let name = randomString(length: nameLength)
        
        let randThumbnail = Int.random(in: 0...9)
        let thumbnail = URL(string: "https://picsum.photos/300/10\(randThumbnail)")!
        
        let trailer = Trailer(id: id, name: name, videoURL: exampleVideoURL, thumbnailImageURL: thumbnail)
        allTrailers.append(trailer)
    }
    return allTrailers
}

func generateEpisodes(_ count: Int, forSeason season: Int) -> [Episode] {
    var allEpisodes: [Episode] = []
    
    for num in 0..<count {
        let id = UUID().uuidString
        
        let nameLength = Int.random(in: 9..<20)
        let name = randomString(length: nameLength)
        
        let randThumbnail = Int.random(in: 0...9)
        let thumbnail = "https://picsum.photos/300/10\(randThumbnail)"
        
        let desc = "Teenage Mutant Ninja Turtles, also known as Teenage Mutant Hero Turtles, is an entertainment franchise created in 1983 by American comic book authors Peter Laird and Kevin Eastman. It follows Leonardo, Raphael, Donatello and Michelangelo, four anthropomorphic turtle brothers trained in ninjitsu who fight evil in New York City.[2]"
        let randLength = Int.random(in: 20...50)
        
        let episode = Episode(id: id, name: name, season: season, episodeNumber: num + 1, thumbnailURLString: thumbnail, description: desc, length: randLength, videoURL: exampleVideoURL)
        allEpisodes.append(episode)
    }
    
    return allEpisodes
}

func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyz"
    return String((0..<length).map {_ in letters.randomElement()!})
}
