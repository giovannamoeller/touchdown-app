//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct NavigationBarView: View {
  
  // MARK: - PROPERTIES
  
  @State private var isLogoAnimating: Bool = false
  
  // MARK: - BODY
  
  var body: some View {
    HStack {
      Button {
        //
      } label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundColor(.black)
      } //: BUTTON
      
      Spacer() 
      
      LogoView()
        .opacity(isLogoAnimating ? 1 : 0)
        .offset(x: 0, y: isLogoAnimating ? 0 : -25)
        .onAppear {
          withAnimation(.easeOut(duration: 0.75)) {
            isLogoAnimating = true
          }
        }
        .onDisappear {
          withAnimation(.easeOut(duration: 0.75)) {
            isLogoAnimating = false
          }
        }
      
      Spacer()
      
      Button {
        //
      } label: {
        ZStack {
          Image(systemName: "cart")
            .font(.title)
            .foregroundColor(.black)
          
          Circle()
            .fill(.red)
            .frame(width: 14, height: 14)
            .offset(x: 13, y: -10)
        } //: ZSTACK
      } //: BUTTON
    } //: HSTACK
  }
}

struct NavigationBarView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarView()
  }
}
