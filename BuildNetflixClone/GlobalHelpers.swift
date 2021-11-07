//
//  GlobalHelpers.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 2/11/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 , rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak")
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
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak")
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 , rating: "TV-MA",
    numberOfSeasons: 7,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak",
    promotionHeadline: "New Episode")
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
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak")
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi TV"],
    year: 2020 , rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisode1,
    creators: "Martin Scorcese",
    cast: "Louis Hofman, Oliver Masucni, Joris Slovak")
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
    promotionHeadline: "Watch Season 6 Now")

let exampleMovies : [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

let exampleEpisode1 = CurrentEpisodeInfo(episodeName: "Beginnings and Ending", description: "Six months after the disappearances, the police form a task force in 3052.", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom
    )
}
