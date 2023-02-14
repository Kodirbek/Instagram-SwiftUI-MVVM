//
//  UserCell.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/01/13.
//

import SwiftUI

struct UserCell: View {
  var body: some View {
    HStack {
      
      //image
      Image("BoburProfile")
        .resizable()
        .scaledToFill()
        .frame(width: 48, height: 48)
        .clipShape(Circle())
      
      // ProfileName & Full Name
      VStack(alignment: .leading) {
        Text("Bobur")
          .font(.system(size: 14, weight: .semibold))
        
        Text("Yangiboev Bobur")
          .font(.system(size: 14))
      }
      
      Spacer()
    }
  }
}

struct UserCell_Previews: PreviewProvider {
  static var previews: some View {
    UserCell()
  }
}
