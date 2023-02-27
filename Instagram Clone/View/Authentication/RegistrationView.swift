//
//  RegistrationView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/22.
//

import SwiftUI

struct RegistrationView: View {
  
  @State private var email = ""
  @State private var fullname = ""
  @State private var username = ""
  @State private var password = ""
  @State private var selectedImage: UIImage?
  @State private var postImage: Image?
  @State var imagePickerPresented = false
  @Environment(\.dismiss) var dismiss
  @FocusState private var keyboardIsFocused: Bool
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    
    ZStack {
      LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
        .onTapGesture {
          keyboardIsFocused = false
        }
      
      VStack {
        
        // PLUS BUTTON / SELECTED IMAGE
        if postImage == nil {
          
          // Plus button
          Button {
            imagePickerPresented.toggle()
          } label: {
            VStack {
              Image(systemName: "plus")
                .font(.title)
                .padding(.bottom, 4)
              Text("Photo")
                .font(.system(size: 18, weight: .semibold))
            }
            .padding(40)
            .foregroundColor(.white)
            .overlay(
              Circle()
                .stroke(Color.white, lineWidth: 1.5)
            )
          }
          .padding(.top, 25)
          .sheet(isPresented: $imagePickerPresented) {
            loadImage()
          } content: {
            ImagePicker(image: $selectedImage)
          }
          
        } else if let image = postImage {
          
          // Image
          image
            .resizable()
            .scaledToFill()
            .frame(width: 140, height: 140)
            .clipShape(Circle())
            .padding(.top, 25)
        }
        
        // TEXT FIELDS
        VStack(spacing: 20) {
          CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
            .modifier(TextFieldModifier())
            .focused($keyboardIsFocused)
          
          CustomTextField(text: $username, placeholder: Text("Username"), imageName: "person")
            .modifier(TextFieldModifier())
            .focused($keyboardIsFocused)
          
          CustomTextField(text: $fullname, placeholder: Text("Full Name"), imageName: "person")
            .modifier(TextFieldModifier())
            .focused($keyboardIsFocused)
          
          CustomSecureField(text: $password, placeholder: Text("Password"))
            .modifier(TextFieldModifier())
            .focused($keyboardIsFocused)
        }
        .padding(.top, 30)
        
        // SIGN UP
        Button {
          keyboardIsFocused = false
          viewModel.register()
        } label: {
          Text("Sign Up")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 360, height: 50)
            .background(.purple)
            .clipShape(Capsule())
            .padding()
        }
        .padding(.top, 20)
        
        Spacer()
        
        // SIGN IN
        HStack {
          Text("Already have an account?")
            .font(.system(size: 14, weight: .semibold))
          
          Button {
            keyboardIsFocused = false
            dismiss()
          } label: {
            Text("Sign In")
              .font(.system(size: 14, weight: .bold))
          }
        } //: HStack
        .foregroundColor(.white)
        .padding(.bottom, 25)
      } //: VStack
    }
  }
}

extension RegistrationView {
  func loadImage() {
    guard let selectedImage = selectedImage else { return }
    postImage = Image(uiImage: selectedImage)
  }
}

struct RegistrationView_Previews: PreviewProvider {
  static var previews: some View {
    RegistrationView()
  }
}
