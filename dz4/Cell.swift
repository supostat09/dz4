//
//  Cell.swift
//  dz4
//
//  Created by Абдулла-Бек on 12/2/23.
//

import Foundation

protocol ScreenDelegate {
    func didSelect(product: Product)
}
class Cell {
    var product: Product
    var delegate: ScreenDelegate?

    init(product: Product) {
        self.product = product
    }
    func display() {
            print("Продукт: \(product.name), цена: \(product.price)")
        }
    func select() {
        delegate?.didSelect(product: product)
        }
}

