//
//  PostGridView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/01/10.
//

import SwiftUI

struct PostGridView: View {
  private let items = [GridItem(), GridItem(), GridItem()]
  private let width = UIScreen.main.bounds.width / 3
  
  var body: some View {
    LazyVGrid(columns: items, spacing: 2) {
      ForEach(0 ..< 10) { _ in
        NavigationLink {
          FeedView()
        } label: {
          Image("Bobur")
            .resizable()
            .scaledToFill()
            .frame(width: width, height: width)
            .clipped()
        }

      }
    }
  }
}

struct PostGridView_Previews: PreviewProvider {
  static var previews: some View {
    PostGridView()
  }
}
