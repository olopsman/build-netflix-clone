//
//  MoviePreviewCell.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 14/11/21.
//

import SwiftUI
import Kingfisher

struct MoviePreviewCell: View {
    let movie: Movie
    
    let colors: [Color] = [.yellow, .gray, .pink, .red, .blue, .green, .orange]
    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 3)
                        .foregroundColor(colors.randomElement())
            )
            
            Image(movie.previewImageName)
                .resizable()
                .scaledToFit()
                .offset(y: -20)
                .frame(height: 65)
        }
    }
}

struct MoviePreviewCell_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            MoviePreviewCell(movie: exampleMovie1)
                .frame(width: 165, height: 50)
        }
    }
}
