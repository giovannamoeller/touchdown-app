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
        Text("Protective Gear")
          .foregroundColor(.white)
        
        Text(product.name)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .foregroundColor(.white)
        
        Text("Price")
          .foregroundColor(.black)
        
        Text("$\(product.price)")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .foregroundColor(.black)
        
        ZStack(alignment: .topTrailing) {
          VStack {
            Spacer()
            
            Text(product.description)
            
            Spacer()
          } //: VSTACK
          .padding()
          .background(Color.white)
          .cornerRadius(32)
          .ignoresSafeArea()
          
          Image(product.image)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 186)
            .offset(x: -16, y: -102)
        } //: ZSTACK
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
