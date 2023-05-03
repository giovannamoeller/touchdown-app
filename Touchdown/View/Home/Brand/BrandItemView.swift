//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct BrandItemView: View {
  
  // MARK: - PROPERTIES
  
  let brand: Brand
  
  // MARK: - BODY
  
  var body: some View {
    Image(brand.image)
      .resizable()
      .scaledToFit()
      .padding()
      .background(Color.white.cornerRadius(16))
      .background(
        RoundedRectangle(cornerRadius: 16).stroke(Colors.colorGray, style: .init(lineWidth: 1.5))
      )
  }
}

struct BrandItemView_Previews: PreviewProvider {
  static let brands: [Brand] = DataManager.decode("brand")
  
  static var previews: some View {
    BrandItemView(brand: brands[0])
  }
}
