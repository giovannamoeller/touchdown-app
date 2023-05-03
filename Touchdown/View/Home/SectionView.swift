//
//  SectionView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct SectionView: View {
  
  // MARK: - PROPERTIES
  
  @State var rotateClockwise: Bool
  
  // MARK: - BODY
  
  var body: some View {
    VStack(spacing: 10) {
      Spacer()
      
      Text("Cateogires".uppercased())
        .font(.footnote)
        .bold()
        .foregroundColor(.white)
        .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
      
      Spacer()
    } //: VSTACK
    .background(Colors.colorGray.cornerRadius(12))
    .frame(width: 85)
  }
}

struct SectionView_Previews: PreviewProvider {
  static var previews: some View {
    SectionView(rotateClockwise: false)
  }
}
