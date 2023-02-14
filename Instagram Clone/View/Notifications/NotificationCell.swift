//
//  NotificationCell.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/01/13.
//

import SwiftUI

struct NotificationCell: View {
  
  @State private var showPostImage = true
  
  var body: some View {
    HStack {
      Image("BoburProfile")
        .resizable()
        .scaledToFill()
        .frame(width: 40, height: 40)
        .clipShape(Circle())
      
      Text("Bobur")
        .font(.system(size: 15, weight: .semibold)) +
      Text("  liked one of your posts")
        .font(.system(size: 15))
      
      Spacer()
      
      if showPostImage {
        Image("kodirbek")
          .resizable()
          .scaledToFill()
          .frame(width: 40, height: 40)
      } else {
        Button {
          // action
        } label: {
          Text("Follow")
            .padding(.horizontal, 20)
            .padding(.vertical, 8)
            .background(.blue)
            .foregroundColor(.white)
            .font(.system(size: 14, weight: .semibold))
            .clipShape(Capsule())
        }

      }
    }
    .padding(.horizontal)
  }
}

struct NotificationCell_Previews: PreviewProvider {
  static var previews: some View {
    NotificationCell()
  }
}
