//
//  RipeningModel.swift
//  Avocados
//
//  Created by Mary Moreira on 26/10/2022.
//

import SwiftUI

// MARK: RIPENING MODEL

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}

