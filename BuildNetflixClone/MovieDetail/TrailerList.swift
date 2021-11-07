//
//  TrailerList.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 7/11/21.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [Trailer]
    let screen = UIScreen.main.bounds
    var body: some View {
        VStack {
            ForEach(trailers) {trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
                        .frame(maxWidth: screen.width)
                    
                    Text(trailer.name)
                        .font(.headline)
                    
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
            }
        }
    }
}

struct TrailerList_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            TrailerList(trailers: exampleTrailers)
        }
    }
}
