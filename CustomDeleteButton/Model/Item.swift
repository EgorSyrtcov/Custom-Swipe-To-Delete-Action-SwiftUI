//
//  Item.swift
//  CustomDeleteButton
//
//  Created by Egor Syrtcov on 27.10.22.
//

import Foundation

struct Item: Identifiable {
    let id = UUID().uuidString
    let name: String
    let details: String
    let image: String
    let price: Float
    var quantity: Int
    var offset: CGFloat = 0
    var isSwiped: Bool = false
}
