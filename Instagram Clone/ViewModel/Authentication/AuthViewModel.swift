//
//  AuthViewModel.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2023/02/26.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
  
  @Published var userSession: FirebaseAuth.User?
  
  init() {
    userSession = Auth.auth().currentUser
  }
  
  func login() {
    print("Login")
  }
  
  func register() {
    print("Register")
  }
  
  func signOut() {
    
  }
  
  func resetPassword() {
    
  }
  
  func fetchUser() {
    
  }
}
