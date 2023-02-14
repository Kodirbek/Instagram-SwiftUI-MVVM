//
//  NotificationsView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct NotificationsView: View {
  var body: some View {
    ScrollView {
      LazyVStack(spacing: 8) {
        ForEach(0 ..< 20) { _ in
          NotificationCell()
            .padding(.top)
        }
      }
    }
  }
}

struct NotificationsView_Previews: PreviewProvider {
  static var previews: some View {
    NotificationsView()
  }
}
