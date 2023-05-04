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
  @EnvironmentObject var productData: ProductData
  
  init(product: Product) {
    self.product = product
  }
  
  // MARK: - BODY
  
  var body: some View {
      VStack(alignment: .leading) {
        ProductNavigationBarView()
          .padding(.horizontal)

        ProductHeaderView()
          .padding()
          .zIndex(1)
                
        VStack(alignment: .center) {
          HStack {
            ProductRatingView()
            
            Spacer()
            
            ProductSizesView()
          } //: HSTACK
          .padding(.top, -32)
          .padding(.bottom)
          
          ScrollView(.vertical, showsIndicators: false) {
            Text(product.description)
              .font(.system(.body, design: .rounded))
              .foregroundColor(.gray)
              .multilineTextAlignment(.leading)
          } //: SCROLL
          
          Spacer()
          
          ProductQuantityFavouriteView()
            .padding(.vertical, 10)
          
          ProductButtonView()
            .padding(.horizontal)
          
        } //: VSTACK
        .padding(.horizontal)
        .background(
          Color.white
            .clipShape(CustomShape())
            .padding(.top, -100)
            .ignoresSafeArea()
        )
        
      } //: VSTACK
      .background(product.backgroundColor.ignoresSafeArea())
      .navigationBarBackButtonHidden()
      .environmentObject(ProductData(product: product))
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static let products: [Product] = DataManager.decode("product")

  static var previews: some View {
    ProductDetailView(product: products[0])
      .environmentObject(ProductData(product: products[0]))
  }
}
