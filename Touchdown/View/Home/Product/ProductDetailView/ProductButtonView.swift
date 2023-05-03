//
//  ProductButtonView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductButtonView: View {
  
  let product: Product
  
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
    .background(product.backgroundColor)
    .clipShape(Capsule())
  }
}

struct ProductButtonView_Previews: PreviewProvider {
  static let products: [Product] = DataManager.decode("product")

  static var previews: some View {
    ProductButtonView(product: products[0])
  }
}
