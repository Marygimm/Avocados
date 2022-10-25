//
//  FactModel.swift
//  Avocados
//
//  Created by Mary Moreira on 25/10/2022.
//

import SwiftUI

//MARK: - Fact MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
