//
//  SearchView.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 9/11/21.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var vm = SearchVM()
    @State private var searchText = ""
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set : {
            searchText = $0
            vm.updateSearchText(with: $0)
        }
        
        
        return ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                SearchBar(text: searchTextBinding, isLoading: $vm.isLoading)
                    .padding()
                
                ScrollView {
                    if vm.isShowingPopularMovies {
                        PopularList(movies: vm.popularMovies, movieDetailToShow: $movieDetailToShow)
                    }
                    
                    if vm.viewState == .empty {
                        Text("Your search did not have any results.")
                            .bold()
                            .padding(.top, 160)
                    } else if vm.viewState == .ready && !vm.isShowingPopularMovies {
                        Text("Search Results")
                    }
                }
                Spacer()
            }
            
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
            }
            
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct PopularList: View {
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    var body: some View {
        VStack {
            HStack {
                Text("Popular Searches")
                    .bold()
                    .font(.title3)
                    .padding(.leading, 12)
                Spacer()
            }
            
            LazyVStack {
                ForEach(movies) { movie in
                    PopularMovieView(movie: movie, movieDetailToShow: $movieDetailToShow)
                        .frame(height: 75)
                }
            }
        }
    }
}