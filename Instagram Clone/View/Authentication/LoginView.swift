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
  @FocusState private var keyboardIsFocused: Bool
  
  var body: some View {
    NavigationView {
      ZStack {
        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
          .ignoresSafeArea()
          .onTapGesture {
            keyboardIsFocused = false
          }
        
        VStack {
          
          // INSTAGRAM LOGO
          Image("instagram")
            .resizable()
            .scaledToFit()
            .frame(width: 220, height: 100)
            .padding(.top, 40)
          
          // EMAIL & PASSWORD FIELD
          VStack(spacing: 20) {
            CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
              .modifier(TextFieldModifier())
              .focused($keyboardIsFocused)
            
            CustomSecureField(text: $password, placeholder: Text("Password"))
              .modifier(TextFieldModifier())
              .focused($keyboardIsFocused)
          }
          .padding(.top, 30)
          
          // FORGOT PASSWORD
          HStack {
            Spacer()
            
            Button {
              keyboardIsFocused = false
            } label: {
              Text("Forgot Password?")
                .font(.system(size: 13, weight: .bold))
                .foregroundColor(.white)
                .padding(.top)
                .padding(.trailing, 32)
            }
          } //: HStack
          
          // SIGN IN
          Button {
            keyboardIsFocused = false
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
          
          // SIGN UP
          HStack {
            Text("Don't have an account?")
              .font(.system(size: 14, weight: .semibold))
            
            NavigationLink {
              RegistrationView()
                .navigationBarBackButtonHidden(true)
            } label: {
              Text("Sign Up")
                .font(.system(size: 14, weight: .bold))
            }
            .simultaneousGesture(TapGesture().onEnded({
              keyboardIsFocused = false
            }))
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
