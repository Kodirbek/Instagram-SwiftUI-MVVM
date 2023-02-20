//
//  UserStatView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/20.
//

import SwiftUI

struct UserStatView: View {
  
  let value: Int
  let title: String
  
  var body: some View {
    VStack {
      Text(String(value))
        .font(.system(size: 15, weight: .semibold))
      
      Text(title)
        .font(.system(size: 15))
    }
    .frame(width: 80, alignment: .center)
  }
}


struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
      UserStatView(value: 2, title: "Followers")
    }
}
