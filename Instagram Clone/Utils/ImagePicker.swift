//
//  ImagePicker.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/21.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
  
  @Binding var image: UIImage?
  @Environment(\.dismiss) private var dismiss
  
  func makeUIViewController(context: Context) -> some UIViewController {
    let picker = UIImagePickerController()
    picker.delegate = context.coordinator
    return picker
  }
  
  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    // blank func
  }
  
  class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    let parent: ImagePicker
    
    init(_ parent: ImagePicker) {
      self.parent = parent
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      guard let image = info[.originalImage] as? UIImage else { return }
      self.parent.image = image
      self.parent.dismiss()
    }
  }
  
  
}
