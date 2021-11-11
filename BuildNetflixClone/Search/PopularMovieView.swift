//
//  PopularMovieView.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 11/11/21.
//

import SwiftUI
import Kingfisher

struct PopularMovieView: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        GeometryReader { proxy in
            HStack {
                KFImage(movie.thumbnailURL)
                    .resizable()
                    .frame(width: proxy.size.width / 3)
                    .padding(.leading, 3)
                
                Text(movie.name)
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "arrowtriangle.right.fill")
                }
                .padding(.trailing, 20)
            }.foregroundColor(.white)
                .onTapGesture {
                    self.movieDetailToShow = movie
                }
        }
    }
}

struct PopularMovieView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            PopularMovieView(movie: exampleMovie1, movieDetailToShow: .constant(nil))
                .frame(height: 75)
        }
    }
}
