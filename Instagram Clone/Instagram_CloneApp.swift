//
//  Instagram_CloneApp.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI
import Firebase

@main
struct Instagram_CloneApp: App {
  
  init() {
    FirebaseApp.configure()
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView().environmentObject(AuthViewModel())
    }
  }
}
