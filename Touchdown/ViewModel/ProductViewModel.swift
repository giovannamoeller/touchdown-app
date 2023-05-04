//
//  ProductViewModel.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 03/05/23.
//

import Foundation

class ProductViewModel: ObservableObject {
  
  @Published var products: [Product] = []
  
  init() {
    self.fetchData()
  }
  
  func fetchData() {
    self.products = DataManager.decode("product")
  }
}
