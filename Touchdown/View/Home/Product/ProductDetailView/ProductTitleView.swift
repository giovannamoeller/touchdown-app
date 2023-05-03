//
//  ProductTitleView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductTitleView: View {
  
  let headline: String
  let title: String
  let color: Color
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text(headline)
      
      Text(title)
        .font(.system(size: 42, weight: .heavy))
    } //: VSTACK
    .foregroundColor(color)
  }
}

struct ProductTitleView_Previews: PreviewProvider {
  static var previews: some View {
    ProductTitleView(headline: "Protective Gear", title: "Helmet Gold", color: .black)
  }
}
