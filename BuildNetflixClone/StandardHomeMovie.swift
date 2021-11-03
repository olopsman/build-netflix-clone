//
//  StandardHOmeMovie.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 2/11/21.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHOmeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            .frame(width: 200, height: 300)
    }
}
