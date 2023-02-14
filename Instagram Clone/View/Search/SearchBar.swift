//
//  SearchBar.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/01/10.
//

import SwiftUI

struct SearchBar: View {
  @Binding var text: String
  @Binding var isEditing: Bool
  @FocusState var isFocused: Bool
    
  var body: some View {
    HStack {
      TextField("Search...", text: $text)
        .focused($isFocused)
        .padding(8)
        .padding(.horizontal, 24)
        .background(Color(.systemGray6))
        .cornerRadius(8)
        .overlay(
          HStack {
            Image(systemName: "magnifyingglass")
              .foregroundColor(.gray)
              .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
              .padding(.leading, 8)
          }
        )
        .onTapGesture {
          isEditing = true
        }
      
      if isEditing {
        Button {
          isEditing = false
          text = ""
          isFocused = false
        } label: {
          Text("Cancel")
            .foregroundColor(.black)
        }
        .padding(.trailing, 8)
        .transition(.move(edge: .trailing))
        .animation(.default, value: isEditing)

      }
      
    } //: HStack
  }
}

struct SearchBar_Previews: PreviewProvider {
  static var previews: some View {
    SearchBar(text: .constant("Search..."), isEditing: .constant(true))
  }
}
