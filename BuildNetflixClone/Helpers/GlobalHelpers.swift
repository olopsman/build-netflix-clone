//
//  GlobalHelpers.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 2/11/21.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string:
"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!

let exampleImageURL = URL(string:
"https://picsum.photos/200/300/")!
let exampleImageURL1 = URL(string:
"https://picsum.photos/200/301/")!
let exampleImageURL2 = URL(string:
"https://picsum.photos/200/302/")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL1, exampleImageURL2].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)
let exampleTrailer2 = Trailer(name: "Hero", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL1)
let exampleTrailer3 = Trailer(name: "Battle of the Bastards", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(
    name: "Beginnings and Endings",
    season: 1,
    episodeNumber: 1,
    thumbnailURLString: "https://picsum.photos/200/300",
    description: "Six months after the disappearance. Six months after the disappearance. Six months after the disappearance.",
    length: 54, videoURL: exampleVideoURL)

let episode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailURLString: "https://picsum.photos/200/301",
    description: "Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987. Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987",
    length: 54, videoURL: exampleVideoURL)


let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailURLString: "https://picsum.photos/200/302",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1954, a missing Helge returns, but he'll only speak to Noah.",
    length: 54, videoURL: exampleVideoURL)

let episode4 = Episode(
    name: "Beginnings and Endings",
    season: 2,
    episodeNumber: 1,
    thumbnailURLString: "https://picsum.photos/200/300",
    description: "Six months after the disappearance. Six months after the disappearance. Six months after the disappearance.",
    length: 54, videoURL: exampleVideoURL)

let episode5 = Episode(
    name: "Dark Matter",
    season: 2,
    episodeNumber: 2,
    thumbnailURLString: "https://picsum.photos/200/301",
    description: "Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987. Clausen and Charlotte interview Regina. The stranger takes Hannah to 1987",
    length: 54, videoURL: exampleVideoURL)


let episode6 = Episode(
    name: "Ghosts",
    season: 2,
    episodeNumber: 3,
    thumbnailURLString: "https://picsum.photos/200/302",
    description: "In 1954, a missing Helge returns, but he'll only speak to Noah",
    length: 54, videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 , rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    moreLikeThisMovie: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 ,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    moreLikeThisMovie: [],
    episodes: allExampleEpisodes,
    trailers: exampleTrailers)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 , rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    moreLikeThisMovie: [], promotionHeadline: "New Episode", trailers: exampleTrailers)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 ,
    rating: "TV-MA",
    numberOfSeasons: 8,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    moreLikeThisMovie: [], trailers: exampleTrailers)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 , rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    moreLikeThisMovie: [], trailers: exampleTrailers)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 ,
    rating: "TV-MA",
    numberOfSeasons: 10,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    moreLikeThisMovie: [], promotionHeadline: "Watch Season 6 Now", trailers: exampleTrailers
    )
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 ,
    rating: "TV-MA",
    numberOfSeasons: 10,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    moreLikeThisMovie: [], promotionHeadline: "Watch Season 6 Now", trailers: exampleTrailers
    )


var exampleMovies : [Movie] {
    [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisode1 = CurrentEpisodeInfo(episodeName: "Beginnings and Ending", description: "Six months after the disappearances, the police form a task force in 3052.", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttribute = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttribute)
        return size.width
    }
}
