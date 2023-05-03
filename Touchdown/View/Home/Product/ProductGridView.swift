//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct ProductGridView: View {
  // MARK: - PROPERTIES
  
  let products: [Product] = DataManager.decode("product")
  
  // MARK: - BODY
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      LazyVGrid(columns: Layout.gridLayout, alignment: .center, spacing: Layout.columnSpacing, pinnedViews: []) {
          ForEach(products) { product in
            ProductItemView(product: product)
          } //: LOOP
      } //: GRID
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    } //: SCROLL
  }
}

struct ProductGridView_Previews: PreviewProvider {
  static var previews: some View {
    ProductGridView()
  }
}
