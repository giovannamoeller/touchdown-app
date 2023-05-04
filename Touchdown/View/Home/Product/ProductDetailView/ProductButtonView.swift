//
//  ProductButtonView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductButtonView: View {
  
  @EnvironmentObject var productData: ProductData

  var body: some View {
    Button {
      //
    } label: {
      Spacer()
      
      Text("Add to cart".uppercased())
        .foregroundColor(.white)
        .font(.system(.title2, design: .rounded))
        .bold()
      
      Spacer()
    } //: BUTTON
    .padding(.vertical, 16)
    .background(productData.product.backgroundColor)
    .clipShape(Capsule())
  }
}

struct ProductButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ProductButtonView()
  }
}
