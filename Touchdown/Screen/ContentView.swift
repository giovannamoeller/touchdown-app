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
            
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 0) {
          CarouselView()
            //.frame(height: UIScreen.main.bounds.width / 1.475)
            .frame(minHeight: 256)
            .padding(.vertical, 10)
          
          CategoryGridView()
          
          ProductGridView()
          
          BrandGridView()
          
          FooterView()
            .padding(.horizontal)
        } //: VSTACK
      } //: SCROLL
    } //: VSTACK
    .background(Colors.colorBackground.ignoresSafeArea())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
