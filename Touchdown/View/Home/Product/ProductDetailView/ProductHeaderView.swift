//
//  ProductHeaderView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductHeaderView: View {
  
  // MARK: - PROPERTIES
  
  let product: Product
  
  // MARK: - BODY
  
  var body: some View {
    VStack(alignment: .leading) {
      VStack(alignment: .leading, spacing: 6) {
        Text("Protective Gear")
        
        Text(product.name)
          .font(.system(size: 42, weight: .heavy))
      } //: VSTACK
      .foregroundColor(.white)
      
      HStack {
        VStack(alignment: .leading, spacing: 6) {
          Text("Price")
          
          Text("$\(product.price)")
            .font(.system(size: 42, weight: .heavy))
        } //: VSTACK
        .foregroundColor(.black)
        
        Spacer()
        
        Image(product.image)
          .resizable()
          .scaledToFit()
      } //: HSTACK
    } //: VSTACK
  }
}

struct ProductHeaderView_Previews: PreviewProvider {
  
  static let products: [Product] = DataManager.decode("product")
  
  static var previews: some View {
    ProductHeaderView(product: products[0])
      .background(Color.gray)
  }
}
