//
//  LogoView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct LogoView: View {
  var body: some View {
    HStack(spacing: 4) {
      Text("Touch".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundColor(.black)
      
      Image("logo-dark")
      
      Text("Down".uppercased())
        .font(.title3)
        .fontWeight(.black)
        .foregroundColor(.black)
    } //: HSTACK
  }
}

struct LogoView_Previews: PreviewProvider {
  static var previews: some View {
    LogoView()
  }
}
