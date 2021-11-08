//
//  SearchBar.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 8/11/21.
//

import SwiftUI

struct SearchBar: View {
    @State private var text: String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color.graySearch)
                .padding(.leading, 10)
            TextField("Search", text: $text)
                .background(Color.grayBackground)
                .cornerRadius(8)
                .foregroundColor(.white)
            
            Text("X")
                .foregroundColor(.white)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            SearchBar()
        }
    }
}
