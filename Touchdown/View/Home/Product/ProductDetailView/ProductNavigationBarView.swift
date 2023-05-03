//
//  ProductNavigationBarView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import SwiftUI

struct ProductNavigationBarView: View {
  
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
  // MARK: - BODY
  
  var body: some View {
    HStack {
      Button {
        self.presentationMode.wrappedValue.dismiss()
      } label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      } //: BUTTON
      
      Spacer()
      
      Button {
        //
      } label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      } //: BUTTON

    } //: HSTACK
  }
}

struct ProductNavigationBarView_Previews: PreviewProvider {
  static var previews: some View {
    ProductNavigationBarView()
      .background(.gray)
  }
}
