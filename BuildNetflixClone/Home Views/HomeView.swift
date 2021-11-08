//
//  HomeView.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 2/11/21.
//

import SwiftUI
import AVFoundation

struct HomeView: View {
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenres
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            // MARK: main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    TopRowButtons(topRowSelection: $topRowSelection, homeGenre: $homeGenre, showGenreSelection: $showGenreSelection, showTopRowSelection: $showTopRowSelection)

                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    HomeStack(vm: vm, topRowSelection: topRowSelection, selectedGenre: homeGenre, movieDetailToShow: $movieDetailToShow)
                }
            }
            
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeInOut, value: 10)
                    .transition(.opacity)
            }
            
            if showTopRowSelection {
                Group {
                    Color.black.opacity(0.9)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ForEach(HomeTopRow.allCases, id:\.self) {topRow in
                            Button(action: {
                                topRowSelection = topRow
                                showTopRowSelection = false
                            }) {
                                if topRow == topRowSelection {
                                    Text("\(topRow.rawValue)")
                                        .bold()
                                } else {
                                    Text("\(topRow.rawValue)")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        Spacer()
                        Button(action: {
                            showTopRowSelection = false
                        }){
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        }
                        .padding(.bottom, 30)
                    }
                }
                .ignoresSafeArea(.all)
                .font(.title2)
            }
            
            // show genre
            if showGenreSelection {
                Group {
                    Color.black.opacity(0.9)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ScrollView {
                            ForEach(vm.allGenre, id:\.self) {genre in
                                Button(action: {
                                    homeGenre = genre
                                    showGenreSelection = false
                                }) {
                                    if genre == homeGenre {
                                        Text("\(genre.rawValue)")
                                            .bold()
                                    } else {
                                        Text("\(genre.rawValue)")
                                            .foregroundColor(.gray)
                                    }
                                }
                                .padding(.bottom, 40)
                            }
                        }
                        Spacer()
                        Button(action: {
                            showGenreSelection = false
                        }){
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        }
                        .padding(.bottom, 30)
                    }
                }
                .ignoresSafeArea(.all)
                .font(.title2)
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtons: View {
    
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre:  HomeGenre
    @Binding var showGenreSelection: Bool
    @Binding var showTopRowSelection: Bool
    
    var body: some View {
        switch topRowSelection {
        case .home:
            HStack {
                Button(action: {
                    topRowSelection = .home
                }) {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                
                Spacer()
                Button(action: {
                    topRowSelection = .tvShows
                }) {
                    Text("TV Shows")
                }
                
                Spacer()
                Button(action: {
                    topRowSelection = .movies
                }) {
                    Text("Movies")
                }
                
                Spacer()
                Button(action: {
                    topRowSelection = .myList
                }) {
                    Text("My List")
                }
                
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
        case .movies, .tvShows, .myList:
            HStack {
                Button(action: {
                    topRowSelection = .home
                }) {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                }
                
                
                HStack(spacing: 20) {
                    Button(action: {
                        showTopRowSelection = true
                    }) {
                        HStack {
                            Text(topRowSelection.rawValue)
                                .font(.system(size: 18))
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180), anchor: .center)
                        }
                    }
                    
                    
                    
                    Button(action: {
                        showGenreSelection = true
                    }) {
                        HStack {
                            Text(homeGenre.rawValue)
                                .font(.system(size: 12))
                            Image(systemName: "triangle.fill")
                                .font(.system(size: 10))
                                .rotationEffect(.degrees(180), anchor: .center)
                        }
                        
                    }
                    
                    Spacer()
                }
                
            }
            .padding(.leading, 30)
            .padding(.trailing, 10)
        }
    }
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}

enum HomeGenre: String {
    case AllGenres
    case Action
    case Comedy
    case Horror
    case Thriller
}


