//
//  CarouselView.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct CarouselView: View {
  
  // MARK: - PROPERTIES
  
  let players: [Player] = DataManager.decode("player")
  
  // MARK: - BODY
  
  var body: some View {
    TabView {
      ForEach(players) { player in
        Image(player.image)
          .resizable()
          .scaledToFit()
          .cornerRadius(12)
          .padding(.top, 10)
          .padding(.horizontal, 15)
      } //: LOOP
    } //: TAB
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
  }
}

struct CarouselView_Previews: PreviewProvider {
  static var previews: some View {
    CarouselView()
      .background(.black)
  }
}
