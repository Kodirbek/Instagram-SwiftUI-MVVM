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
        Image("kodirbekProfile")
          .resizable()
          .scaledToFill()
          .frame(width: 80, height: 80)
          .clipShape(Circle())
        
        
      }
    }
  }
}

struct ProfileHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHeaderView()
  }
}
