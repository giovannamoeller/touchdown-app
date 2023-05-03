//
//  SystemDesign.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct Colors {
  static let colorBackground = Color("ColorBackground")
  static let colorGray = Color(UIColor.systemGray4)
}

struct Layout {
  static let columnSpacing: CGFloat = 10
  static let rowSpacing: CGFloat = 10
  static var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
  }
}
