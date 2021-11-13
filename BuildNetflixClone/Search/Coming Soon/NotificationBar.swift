//
//  NotificationBar.swift
//  BuildNetflixClone
//
//  Created by Paulo Orquillo on 13/11/21.
//

import SwiftUI

struct NotificationBar: View {
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button(action: {
            // show notification list
            showNotificationList = true
        }) {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18, weight: .bold))
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct NotificationBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            NotificationBar(showNotificationList: .constant(false))
        }
    }
}
