//
//  Screen.swift
//  dz4
//
//  Created by Абдулла-Бек on 12/2/23.
//

import Foundation

class Screen: ScreenDelegate {
    var cell: Cell
    var selectedProducts: [Product] = []
        
    init(cell: Cell, products: [Product]) {
            self.cell = cell
            self.cell.delegate = self
        }
    func display() {
        print("Доступные продукты:")
        
        for (index, product) in products.enumerated() {
            print("\(index): \(product.name) - \(product.price)")
            }
        }
    func didSelect(product: Product) {
        selectedProducts.append(product)
        print("Выбран \(selectedProducts.count) продукт:")
        
        for selectedProduct in selectedProducts {
            print("- \(selectedProduct.name) - \(selectedProduct.price)")
        }
        let total = selectedProducts.reduce(0) { $0 + $1.price }
        print("Итого: \(total)")
    }
}
