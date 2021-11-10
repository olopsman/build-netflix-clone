//
//  SearchBar.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 8/11/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    @State private var isEditing = true
    
    @Binding var isLoading: Bool
    
    var poc = "tesst **bold okay ** ano kaya"
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.grayBackground
                .frame(width: 270, height: 36)
                .cornerRadius(8)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearch)
                    .padding(.leading, 10)
                TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                    .background(Color.grayBackground)
                    .cornerRadius(8)
                    .foregroundColor(.white)
                    .onTapGesture {
                        isEditing = true
                    }
                    .animation(.default, value: isEditing)
                
                if !text.isEmpty {
                    if isLoading {
                        
                        Button(action: {
                            text = ""
                        }){
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        }
                        .padding(.trailing, 32)
                        .frame(width: 35, height: 35)
                    } else {
                        Button(action: {
                            text = ""
                        }){
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.graySearch)
                            
                        }
                        .frame(width: 35, height: 35)
                        .padding(.trailing, 18)
                        
                    }
                }
                
                if isEditing {
                    Button(action: {
                        text = ""
                        isEditing = false
                        //give up first-responder
                        hideKeyboard()
                    }){
                        Text("Cancel")
                            .foregroundColor(.white)
                    }
                    .padding(.trailing, 10)
                    .transition(.move(edge: .trailing))
                    .animation(.default, value: isEditing)
                }
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            SearchBar(text: .constant(""), isLoading: .constant(false))
                .padding()
        }
.previewInterfaceOrientation(.portrait)
    }
}
