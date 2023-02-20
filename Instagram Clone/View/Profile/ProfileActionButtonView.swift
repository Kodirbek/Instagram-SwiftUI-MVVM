//
//  ProfileActionButtonView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/20.
//

import SwiftUI

struct ProfileActionButtonView: View {
  
  var isCurrentUser = false
  var isFollowed = false
  
  var body: some View {
    if isCurrentUser {
      Button {
        // some action
      } label: {
        Text("Edit Profile")
          .font(.system(size: 14, weight: .semibold))
          .frame(width: 360, height: 32)
          .foregroundColor(.black)
          .overlay {
            RoundedRectangle(cornerRadius: 3)
              .stroke(.gray, lineWidth: 1)
          }
      }
    } else {
      
      HStack {
        Button {
          // some action
        } label: {
          Text(isFollowed ? "Following" : "Follow")
            .font(.system(size: 14, weight: .semibold))
            .frame(width: 172, height: 32)
            .foregroundColor(isFollowed ? .black : .white)
            .background(isFollowed ? .white : .blue)
            .overlay {
              RoundedRectangle(cornerRadius: 3)
                .stroke(isFollowed ? .gray : .blue, lineWidth: 1)
            }
        }
        
        Button {
          // some action
        } label: {
          Text("Message")
            .font(.system(size: 14, weight: .semibold))
            .frame(width: 172, height: 32)
            .foregroundColor(.black)
            .overlay {
              RoundedRectangle(cornerRadius: 3)
                .stroke(.gray, lineWidth: 1)
            }
        }
      }
      
    }
  }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileActionButtonView()
  }
}
