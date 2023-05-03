//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductDetailView: View {
  
  // MARK: - PROPERTIES
  
  let product: Product
  var backgroundColor: Color {
    return Color(red: product.color[0], green: product.color[1], blue: product.color[2])
  }
  
  // MARK: - BODY
  
  var body: some View {
    ZStack {
      backgroundColor.ignoresSafeArea()
      
      VStack(alignment: .leading) {
        
        // HEADER
        ProductHeaderView(product: product)
          .padding()
        
        VStack {
          Spacer()
          
          HStack {
            ProductRatingView()
            
            Spacer()
            
            ProductSizesView()
          } //: HSTACK
          .padding(.top, 32)
          .padding(.bottom, 8)
          
          Spacer()
          
          Text(product.description)
            .foregroundColor(.gray)
          
          Spacer()
        } //: VSTACK
        .padding()
        .background(Color.white)
        .cornerRadius(32)
        .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: -5)
        .ignoresSafeArea()
      } //: VSTACK
    } //: ZSTACK
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static let products: [Product] = DataManager.decode("product")
  
  static var previews: some View {
    ProductDetailView(product: products[0])
  }
}
