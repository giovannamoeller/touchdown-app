//
//  CustomNavigationBar.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct CustomNavigationBar: View {
  
  // MARK: - PROPERTIES
  
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
    }
  }
}

struct CustomNavigationBar_Previews: PreviewProvider {
  static var previews: some View {
    CustomNavigationBar()
  }
}
