//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct ProductItemView: View {
  
  // MARK: - PROPERTIES
  
  let product: Product
  
  // MARK: - BODY
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Image(product.image)
        .resizable()
        .scaledToFit()
        .padding()
        .background(product.backgroundColor)
        .cornerRadius(16)
      
      Text(product.name)
        .font(.title2)
        .fontWeight(.heavy)
        .foregroundColor(.black)
      
      Text(product.formattedPrice)
        .foregroundColor(.gray)
        .bold()
    } //: VSTACK
  }
}

struct ProductItemView_Previews: PreviewProvider {
  static let products: [Product] = DataManager.decode("product")
  
  static var previews: some View {
    ProductItemView(product: products[0])
  }
}
