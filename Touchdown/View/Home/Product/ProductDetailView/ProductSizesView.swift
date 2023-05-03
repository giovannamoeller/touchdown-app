//
//  ProductSizesView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductSizesView: View {
  
  // MARK: - PROPERTIES
  
  let sizes: [String] = ["XS", "S", "M", "L", "XL"]
  
  // MARK: - BODY
  
  var body: some View {
    VStack(alignment: .trailing, spacing: 8) {
      Text("Sizes")
        .bold()
      
      HStack(spacing: 8) {
        ForEach(sizes, id: \.self) { size in
          Text(size)
            .font(.title3)
            .bold()
            .frame(width: 42, height: 42)
            .background(
              RoundedRectangle(cornerRadius: 8).stroke(Colors.colorGray, lineWidth: 1.5)
            )
        }
      }
    } //: VSTACK
    .foregroundColor(Colors.colorGray)
  }
}

struct ProductSizesView_Previews: PreviewProvider {
  static var previews: some View {
    ProductSizesView()
  }
}
