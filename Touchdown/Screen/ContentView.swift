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
      Spacer()
      
      FooterView()
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
