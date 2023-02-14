//
//  FeedCell.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct FeedCell: View {
  var body: some View {
    VStack(alignment: .leading) {
      // user info
      HStack {
        Image("kodirbekProfile")
          .resizable()
          .scaledToFill()
          .frame(width: 36, height: 36)
          .clipped()
          .cornerRadius(18)
        
        Text("Kodirbek")
          .font(.system(size: 14, weight: .semibold))
        
      }
      .padding([.leading, .bottom], 8)
      
      // post image
      Image("kodirbek")
        .resizable()
        .scaledToFill()
        .frame(maxHeight: 440)
      
      // action buttons
      HStack(spacing: 13) {
        Button {
          // action
        } label: {
          Image(systemName: "heart")
            .resizable()
            .scaledToFill()
            .frame(width: 22, height: 22)
            .font(.system(size: 20))
            .padding(4)
        }
        
        Button {
          // action
        } label: {
          Image(systemName: "bubble.right")
            .resizable()
            .scaledToFill()
            .frame(width: 22, height: 22)
            .font(.system(size: 20))
            .padding(4)
        }
        
        Button {
          // action
        } label: {
          Image(systemName: "paperplane")
            .resizable()
            .scaledToFill()
            .frame(width: 22, height: 22)
            .font(.system(size: 20))
            .padding(4)
        }

      }
      .foregroundColor(.black)
      .padding(.leading, 4)
      
      Text("3 likes")
        .font(.system(size: 15, weight: .semibold))
        .padding(.leading, 8)
        .padding(.bottom, 1)
      
      // caption
      HStack {
        Text("kodirbek")
          .font(.system(size: 15, weight: .semibold)) +
        Text("  Escape your routine to find peace sometimes.Try to enjoy each minute of your life. After all, life is made up of munites...")
          .font(.system(size: 15))
      }
      .padding(.horizontal, 8)
      
      
      Text("2d")
        .font(.system(size: 14))
        .foregroundColor(.gray)
        .padding(.leading, 8)
        .padding(.top, -2)
      
    } //: VStack
  }
}

struct FeedCell_Previews: PreviewProvider {
  static var previews: some View {
    FeedCell()
  }
}
