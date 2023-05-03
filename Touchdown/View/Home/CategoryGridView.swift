//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct CategoryGridView: View {
  
  // MARK: - PROPERTIES
  
  let categories: [Category] = DataManager.decode("category")
  
  // MARK: - BODY
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHGrid(rows: Layout.gridLayout, alignment: .center, spacing: Layout.columnSpacing, pinnedViews: []) {
        ForEach(categories) { category in
          CategoryItemView(category: category)
        } //: LOOP
      } //: GRID
      .frame(height: 140)
      .padding(.horizontal, 15)
      .padding(.vertical, 10)
    } //: SCROLL
  }
}

struct CategoryGridView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryGridView()
  }
}
