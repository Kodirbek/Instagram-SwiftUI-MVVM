//
//  LoginView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/22.
//

import SwiftUI

struct LoginView: View {
  var body: some View {
    NavigationView {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
          .ignoresSafeArea()
        
        VStack {
          Image("instagram")
            .resizable()
            .scaledToFit()
            .frame(width: 220, height: 100)
            .padding(.top, 70)
          
          // email field
          
          // password field
          
          // forgot password
          
          // sign in
          
          // go to sign in
          
          
          Spacer()
        }
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
