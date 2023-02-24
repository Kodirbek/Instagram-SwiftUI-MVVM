//
//  TextFieldModifier.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/24.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .padding()
      .background(Color(.init(white: 1, alpha: 0.15)))
      .cornerRadius(10)
      .foregroundColor(.white)
      .padding(.horizontal, 32)
  }
}
