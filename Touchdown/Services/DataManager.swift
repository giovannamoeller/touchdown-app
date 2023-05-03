//
//  DataManager.swift
//  Touchdown
//
//  Created by Giovanna Moeller on 02/05/23.
//

import Foundation

struct DataManager {
  
  private init() {}
  
  static func decode<T: Codable>(_ file: String) -> T {
    guard let url = Bundle.main.url(forResource: file, withExtension: "json") else {
      fatalError("Unable to locate \(file).")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Unable to load \(file).")
    }
    
    guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from bundle.")
    }
    
    return decodedData
  }
  
}
