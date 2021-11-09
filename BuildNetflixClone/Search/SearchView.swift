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
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                SearchBar(text: $searchText, isLoading: $vm.isLoading)
                    .padding()
                Spacer()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
