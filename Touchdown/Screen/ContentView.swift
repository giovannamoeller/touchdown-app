//
//  ContentView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  
  var body: some View {
    VStack {
      NavigationBarView()
        .padding()
        .background(.white)
        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
      
      Spacer()
      
      FooterView()
        .padding(.horizontal)
    } //: VSTACK
    .background(Colors.colorBackground.ignoresSafeArea())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
