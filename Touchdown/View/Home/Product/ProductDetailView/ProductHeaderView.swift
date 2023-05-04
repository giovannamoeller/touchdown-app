//
//  ProductHeaderView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductHeaderView: View {
  
  // MARK: - PROPERTIES
  
  @EnvironmentObject var productData: ProductData
  @State private var isAnimating: Bool = false
  
  // MARK: - BODY
  
  var body: some View {
    VStack(alignment: .leading) {
      VStack(alignment: .leading, spacing: 6) {
        Text("Protective Gear")
        
        Text(productData.product.name)
          .font(.system(size: 42, weight: .heavy))
      } //: VSTACK
      .foregroundColor(.white)
      
      HStack {
        VStack(alignment: .leading, spacing: 6) {
          Text("Price")
          
          Text(productData.product.formattedPrice)
            .font(.system(size: 42, weight: .heavy))
        } //: VSTACK
        .foregroundColor(.black)
        .offset(y: isAnimating ? -50 : -75)
        
        Spacer()
        
        Image(productData.product.image)
          .resizable()
          .scaledToFit()
          .offset(y: isAnimating ? 0 : -35)
      } //: HSTACK
      .onAppear {
        withAnimation(.easeOut(duration: 0.75)) {
          isAnimating.toggle()
        }
      }
    } //: VSTACK
  }
}

struct ProductHeaderView_Previews: PreviewProvider {
  static var previews: some View {
    ProductHeaderView()
      .background(Color.gray)
  }
}
