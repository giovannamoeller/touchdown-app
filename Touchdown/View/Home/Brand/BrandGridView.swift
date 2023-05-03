//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct BrandGridView: View {
  // MARK: - PROPERTIES
  
  let brands: [Brand] = DataManager.decode("brand")
  
  // MARK: - BODY
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("Brands")
        .font(.largeTitle)
        .fontWeight(.heavy)
        .padding(16)
      
      ScrollView(.horizontal, showsIndicators: false) {
        LazyHGrid(rows: Layout.gridLayout, alignment: .center, spacing: Layout.columnSpacing, pinnedViews: []) {
          ForEach(brands) { brand in
            BrandItemView(brand: brand)
          } //: LOOP
        } //: GRID
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
      }
    } //: SCROLL
  }
}

struct BrandGridView_Previews: PreviewProvider {
  static var previews: some View {
    BrandGridView()
  }
}
