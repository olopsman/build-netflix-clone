//
//  TrailerPlayerView.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 14/11/21.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {
    var videoURL: URL?
    @Binding var playVideo: Bool
    
    var body: some View {
        if videoURL != nil {
            VideoPlayer(url: videoURL!, play: $playVideo)
        } else {
            Text("Could not load video")
        }
    }
}

struct TrailerPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        TrailerPlayerView(videoURL: exampleVideoURL, playVideo: .constant(true))
    }
}
