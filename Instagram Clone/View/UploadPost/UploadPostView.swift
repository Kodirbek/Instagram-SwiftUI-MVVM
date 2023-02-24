//
//  UploadPostView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct UploadPostView: View {
  
  @State private var selectedImage: UIImage?
  @State private var postImage: Image?
  @State var captionText = ""
  @State var imagePickerPresented = false
  
  var body: some View {
    VStack(alignment: .center) {
      
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
          .padding(30)
          .foregroundColor(.black)
          .overlay(
            Circle()
              .stroke(Color.black, lineWidth: 2)
          )
        }
        .sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
          ImagePicker(image: $selectedImage)
        })
        .padding(.top, 56)
        
      } else if let image = postImage {
        
        HStack(alignment: .top) {
          image
            .resizable()
            .scaledToFill()
            .frame(width: 96, height: 96)
            .clipped()
          
          TextField("Enter your caption...", text: $captionText)
        }
        .padding()
      }
      
      Button {
        // some action
      } label: {
        Text("Share")
          .font(.system(size: 16, weight: .semibold))
          .frame(width: 360, height: 50)
          .foregroundColor(.white)
          .background(.blue)
          .cornerRadius(5)
      }
      .padding(.top, 120)

      
      Spacer()
      
      
    }//: VStack
  }
}

extension UploadPostView {
  func loadImage() {
    guard let selectedImage = selectedImage else { return }
    postImage = Image(uiImage: selectedImage)
  }
}

struct UploadPostView_Previews: PreviewProvider {
  static var previews: some View {
    UploadPostView()
  }
}
