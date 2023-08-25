//
//  MenuItem.swift
//  Menu
//
//  Created by Christian Foulcard on 8/22/23.
//

import Foundation

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}

