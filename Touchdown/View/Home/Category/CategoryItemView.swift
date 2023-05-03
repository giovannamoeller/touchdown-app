//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct CategoryItemView: View {
  
  // MARK: - PROPERTIES
  
  let category: Category
  
  // MARK: - BODY
  
  var body: some View {
    Button {
      //
    } label: {
      HStack(alignment: .center, spacing: 6) {
        Image(category.image)
          .resizable()
          .scaledToFit()
          .frame(width: 32, height: 32)
        
        Text(category.name.uppercased())
          .foregroundColor(.gray)
        
        Spacer()
      } //: HSTACK
      .padding()
      .background(Color.white.cornerRadius(16))
      .background(
        RoundedRectangle(cornerRadius: 16).stroke(.gray, style: .init(lineWidth: 1.5))
      )
      
    } //: BUTTON
  }
}

struct CategoryItemView_Previews: PreviewProvider {
  static let categories: [Category] = DataManager.decode("category")
  static var previews: some View {
    CategoryItemView(category: categories[0])
  }
}
