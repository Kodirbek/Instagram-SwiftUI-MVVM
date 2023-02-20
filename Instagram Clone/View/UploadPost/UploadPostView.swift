//
//  UploadPostView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct UploadPostView: View {
  
  @State private var selectedImage: UIImage?
  @State var postImage: Image?
  @State var captionText = ""
  
  var body: some View {
    VStack(alignment: .center) {
      
      if postImage == nil {
        // Plus button
        Button {
          // action
        } label: {
          VStack {
            Image(systemName: "plus").font(.title).padding(.bottom, 4)
            Text("Photo").font(.headline)
          }
        }
        .padding(30)
        .foregroundColor(.black)
        .overlay(
          Circle()
            .stroke(Color.black, lineWidth: 2)
        )
        .padding(.top, 56)
      } else {
        HStack(alignment: .top) {
          Image("kodirbek")
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

struct UploadPostView_Previews: PreviewProvider {
  static var previews: some View {
    UploadPostView()
  }
}
