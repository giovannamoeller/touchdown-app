//
//  ProductQuantityFavouriteView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductQuantityFavouriteView: View {
  
  // MARK: - PROPERTIES
  
  @State private var counter: Int = 0
  
  // MARK: - BODY
  
  var body: some View {
    HStack(alignment: .center, spacing: 6) {
      Button {
        if counter > 0 {
          counter -= 1
        }
      } label: {
        Image(systemName: "minus.circle")
      } //: BUTTON
      
      Text("\(counter)")
        .fontWeight(.semibold)
        .frame(minWidth: 36)
      
      Button {
        if counter < 100 {
          counter += 1
        }
      } label: {
        Image(systemName: "plus.circle")
      } //: BUTTON
      
      Spacer()
      
      Button {
        //
      } label: {
        Image(systemName: "heart.circle")
          .foregroundColor(.pink)
      } //: BUTTON
    } //: HSTACK
    .font(.system(.title, design: .rounded))
    .foregroundColor(.black)
    .imageScale(.large)
  }
}

struct ProductQuantityFavouriteView_Previews: PreviewProvider {
  static var previews: some View {
    ProductQuantityFavouriteView()
  }
}
