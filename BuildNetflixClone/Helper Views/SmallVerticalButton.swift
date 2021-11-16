//
//  SmallVerticalButton.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 3/11/21.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    var color: Color = Color.white
    
    var isON: Bool
    
    var imageName: String {
        if isON {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }) {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(color)
                Text(text)
                    .foregroundColor(color)
                    .font(.system(size: 14))
                    .bold()
            }
        }
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isON: false) {
                print("Tapped")
            }
        }
    }
}
