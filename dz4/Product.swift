//
//  Product.swift
//  dz4
//
//  Created by Абдулла-Бек on 12/2/23.
//

import Foundation

protocol ScreenDelegate {
    func didSelect(product: Product)
}

class Product {
    var name: String
    var price: Float
    
    init(name: String, price: Float) {
        self.name = name
        self.price = price
    }
}
