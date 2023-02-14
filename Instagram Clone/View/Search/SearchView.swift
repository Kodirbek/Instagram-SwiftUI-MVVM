//
//  SearchView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct SearchView: View {
  
  @State var searchText = ""
  @State var inSearchMode = false
  var body: some View {
    
    ScrollView {
      
      SearchBar(text: $searchText, isEditing: $inSearchMode)
        .padding()
      
      ZStack {
        if inSearchMode {
          UserListView()
        } else {
          PostGridView()
        }
      }
      
    } //: ScrollView
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}
