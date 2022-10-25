//
//  HeaderModel.swift
//  Avocados
//
//  Created by Mary Moreira on 25/10/2022.
//

import SwiftUI

//MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
