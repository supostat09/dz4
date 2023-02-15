//
//  main.swift
//  dz4
//
//  Created by Абдулла-Бек on 12/2/23.
//

import Foundation

let products = [
    Product(name: "cola", price: 50.0),
    Product(name: "milk", price: 40.0),
    Product(name: "bread", price: 20.0),
    Product(name: "kefir", price: 35.0),
    Product(name: "butter", price: 75.0),
    Product(name: "eggs", price: 60.0)
]
let cell = Cell(product: products[0])
let screen = Screen(cell: cell, products: products)

screen.display()
cell.display()

for i in 0..<products.count {
    cell.product = products[i]
    cell.display()
    cell.select()
}
