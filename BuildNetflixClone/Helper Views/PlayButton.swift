//
//  PlayButton.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 3/11/21.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3)
        }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                
            }
        }
    }
}
