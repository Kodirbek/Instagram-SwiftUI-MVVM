//
//  LoginView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/22.
//

import SwiftUI

struct LoginView: View {
  
  @State private var email = ""
  @State private var password = ""
  
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
            .padding(.top, 40)
          
          // email field
          VStack(spacing: 20) {
            CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
              .padding()
              .background(Color(.init(white: 1, alpha: 0.15)))
              .cornerRadius(10)
              .foregroundColor(.white)
              .padding(.horizontal, 32)
            
            // password field
            CustomSecureField(text: $password, placeholder: Text("Password"))
              .padding()
              .background(Color(.init(white: 1, alpha: 0.15)))
              .cornerRadius(10)
              .foregroundColor(.white)
              .padding(.horizontal, 32)
          }
          .padding(.top, 50)
          
          // forgot password
          HStack {
            Spacer()
            
            Button {
              // some action
            } label: {
              Text("Forgot Password?")
                .font(.system(size: 13, weight: .semibold))
                .foregroundColor(.white)
                .padding(.top)
                .padding(.trailing, 32)
            }
          } //: HStack
          
          // sign in
          Button {
            // some action
          } label: {
            Text("Sign In")
              .font(.headline)
              .foregroundColor(.white)
              .frame(width: 360, height: 50)
              .background(.purple)
              .clipShape(Capsule())
              .padding()
          }
          
          Spacer()

          // go to sign in
          HStack {
            Text("Don't have an account?")
              .font(.system(size: 14, weight: .semibold))
            
            Button {
              // Sign up action
            } label: {
              Text("Sign Up")
                .font(.system(size: 14, weight: .bold))
            }
          } //: HStack
          .foregroundColor(.white)
          .padding(.bottom, 25)

        } //: VStack
      } //: ZStack
    } //: NavigationView
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
