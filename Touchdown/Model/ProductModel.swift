//
//  ProductModel.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import SwiftUI

struct Product: Identifiable, Codable {
  let id: Int
  let name: String
  let image: String
  let price: Int
  let description: String
  let color: [Double]
  
  var red: Double { color[0] }
  var green: Double { color[1] }
  var blue: Double { color[2] }
  
  var backgroundColor: Color {
    Color(red: red, green: green, blue: blue)
  }
  
  var formattedPrice: String { "$\(price)" }

}
