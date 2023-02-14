//
//  ShoppingCart.swift
//  dz4
//
//  Created by Абдулла-Бек on 12/2/23.
//

import Foundation

class ShoppingCart: ScreenDelegate {
    static let shared = ShoppingCart()
    private init() {}
    var selectedProducts: [Product] = []
    
    func didSelect(product: Product) {
        selectedProducts.append(product)
        print("Выбран: \(selectedProducts.count) продукт - \(product.name) цена: \(product.price)")
    }
    
    func getTotal() -> Float {
        return Float(selectedProducts.reduce(0, { $0 + $1.price }))
    }
}
