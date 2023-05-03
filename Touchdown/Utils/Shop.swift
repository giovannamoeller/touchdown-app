//
//  Shop.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product?
}

class ProductData: ObservableObject {
  @Published var product: Product
  
  init(product: Product) {
    self.product = product
  }
}
