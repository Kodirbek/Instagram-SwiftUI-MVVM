//
//  ContentView.swift
//  Instagram Clone
//
//  Created by Abduqodir's MacPro on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var viewModel: AuthViewModel
  
  var body: some View {
    MainTabView()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
