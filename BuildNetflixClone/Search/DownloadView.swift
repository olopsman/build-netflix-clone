//
//  DownloadView.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 14/11/21.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                    Text("Smart Downloads")
                    Text("ON")
                        .foregroundColor(.blue)
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundColor(.grayBackground)
                        .padding(.horizontal, 100)
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                        .foregroundColor(.gray)
                }
                .frame(height: 275)
                .padding(.top, 75)
                
                VStack(spacing: 20){
                    Text("Never be without Netflix")
                        .font(.title2)
                        .bold()
                    Text("Download shows and movies so you'll never be without something to watch \n-- even when you're offline")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                    
                    Button(action: {
                        
                    }) {
                        Text("See What You Can Download")
                            .foregroundColor(.black)
                            .padding()
                            .background(.white)
                    }
                }

                Spacer()
            }
            .foregroundColor(.white)
        }

        
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
