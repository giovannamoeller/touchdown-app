//
//  ProductModel.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import Foundation

struct Product: Identifiable, Codable {
  let id: Int
  let name: String
  let image: String
  let price: Double
  let description: String
  let color: [Double]
}
