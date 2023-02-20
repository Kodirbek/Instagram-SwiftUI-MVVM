//
//  ProfileHeaderView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/01/13.
//

import SwiftUI

struct ProfileHeaderView: View {
  var body: some View {
    VStack(alignment: .leading) {
      
      HStack {
        Image("BoburProfile")
          .resizable()
          .scaledToFill()
          .frame(width: 80, height: 80)
          .clipShape(Circle())
        
        Spacer()
        
        HStack(spacing: 16) {
          UserStatView(value: 1, title: "Post")
          UserStatView(value: 2, title: "Followers")
          UserStatView(value: 4, title: "Following")
        }
      }
      .padding(.horizontal)
      
      VStack(alignment: .leading, spacing: 5) {
        Text("Bobur Yangiboev")
          .font(.system(size: 15, weight: .semibold))
        
        Text("Financial consultant")
          .font(.system(size: 15))
      }
      .padding([.leading, .top])
      
      // Button
      HStack {
        Spacer()
        
        ProfileActionButtonView()
        
        Spacer()
      }
      .padding(.top)
      

    }//: VStack
  }
}


struct ProfileHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHeaderView()
  }
}
