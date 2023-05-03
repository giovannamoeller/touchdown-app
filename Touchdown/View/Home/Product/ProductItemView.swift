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
  var backgroundColor: Color {
    return Color(red: product.color[0], green: product.color[1], blue: product.color[2])
  }
  
  // MARK: - BODY
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Image(product.image)
        .resizable()
        .scaledToFit()
        .padding()
        .background(backgroundColor)
        .cornerRadius(16)
      
      Text(product.name)
        .font(.title2)
        .fontWeight(.heavy)
      
      Text("$\(product.price)")
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
