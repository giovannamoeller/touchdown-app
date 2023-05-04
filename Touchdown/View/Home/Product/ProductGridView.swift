//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct ProductGridView: View {
  // MARK: - PROPERTIES
  
  @ObservedObject var viewModel: ProductViewModel = ProductViewModel()
  
  // MARK: - BODY
  
  var body: some View {
      VStack(alignment: .leading) {
        Text("Helmets")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(16)
        
        ScrollView(.vertical, showsIndicators: false) {
          LazyVGrid(columns: Layout.gridLayout, alignment: .center, spacing: Layout.columnSpacing, pinnedViews: []) {
            ForEach(viewModel.products) { product in
                NavigationLink {
                  ProductDetailView(product: product)
                } label: {
                  ProductItemView(product: product)
                }
              } //: LOOP
          } //: GRID
          .padding(.horizontal, 15)
          .padding(.vertical, 10)
        } //: SCROLL
      } //: VSTACK
      .environmentObject(viewModel)
  }
}

struct ProductGridView_Previews: PreviewProvider {
  static var previews: some View {
    ProductGridView()
  }
}
