//
//  MainTabView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct MainTabView: View {
  var body: some View {
    NavigationStack {
      TabView {
        FeedView()
          .tabItem {
            Image(systemName: "house")
          }
        
        SearchView()
          .tabItem {
            Image(systemName: "magnifyingglass")
          }
        
        UploadPostView()
          .tabItem {
            Image(systemName: "plus.square")
          }
        
        NotificationsView()
          .tabItem {
            Image(systemName: "heart")
          }
        
        ProfileView()
          .tabItem {
            Image(systemName: "person")
          }
      }
      .accentColor(.black)
      .navigationTitle("Home")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct MainTabView_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView()
  }
}
