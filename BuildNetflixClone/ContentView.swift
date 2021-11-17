//
//  ContentView.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 2/11/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showPreviewFullScreen = false
    @State private var previewStartingIndex: Int = 0
    
    @State private var previewCurrentPos: CGFloat = 0
    
    let screen = UIScreen.main.bounds
    init(){
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
    }
    var body: some View {
        ZStack {
            TabView {
                HomeView(showPreviewFullScree: $showPreviewFullScreen, previewStartingIndex: $previewStartingIndex)
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }.tag(1)
                ComingSoon()
                    .tabItem {
                        Image(systemName: "play.rectangle")
                        Text("Coming Soon")
                    }.tag(2)
                DownloadView()
                    .tabItem {
                        Image(systemName: "arrow.down.to.line.alt")
                        Text("Downloads")
                    }.tag(3)
                Text("More")
                    .tabItem {
                        Image(systemName: "equal")
                        Text("2")
                    }.tag(4)
            }
            .accentColor(.white)
            
            PreviewList(
                movies: exampleMovies,
                currentSelection: $previewStartingIndex,
                isVisible: $showPreviewFullScreen)
                .offset(y: previewCurrentPos)
                .isHidden(!showPreviewFullScreen)
                .animation(.easeIn, value: showPreviewFullScreen)
                .transition(.move(edge: .bottom))
        }
        .onChange(of: showPreviewFullScreen, perform: {value in
            if value {
                //show full screen
                withAnimation {
                    previewCurrentPos = .zero
                }
            } else {
                withAnimation {
                    previewCurrentPos = screen.height + 20
                }
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
