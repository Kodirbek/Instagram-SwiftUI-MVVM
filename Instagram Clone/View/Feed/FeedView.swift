//
//  FeedView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct FeedView: View {
  var body: some View {
    ScrollView(showsIndicators: false) {
      LazyVStack(spacing: 30) {
        ForEach(0..<20) { _ in
          FeedCell()
        }
      }
      .padding(.top)
    }
  }
}

struct FeedView_Previews: PreviewProvider {
  static var previews: some View {
    FeedView()
  }
}
