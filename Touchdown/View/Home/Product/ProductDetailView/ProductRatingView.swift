//
//  ProductRatingView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductRatingView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text("Ratings")
        .bold()
      
      HStack(spacing: 0) {
        ForEach(0..<5) { item in
          Image(systemName: "star.square.fill")
            .font(.largeTitle)
        }
      }
    } //: VSTACK
    .foregroundColor(Colors.colorGray)
  }
}

struct ProductRatingView_Previews: PreviewProvider {
  static var previews: some View {
    ProductRatingView()
  }
}
