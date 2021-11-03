//
//  HomeView.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 2/11/21.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ForEach(movies) { category in
                Text(
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
