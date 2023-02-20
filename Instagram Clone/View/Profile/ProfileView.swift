//
//  ProfileView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct ProfileView: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 32) {
        ProfileHeaderView()
        
        PostGridView()
      }
      .padding(.top)
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
