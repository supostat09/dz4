//
//  main.swift
//  dz4
//
//  Created by Абдулла-Бек on 12/2/23.
//

import Foundation

let product1 = Product(name: "cola", price: 50.0)
let product2 = Product(name: "milk", price: 40.0)
let product3 = Product(name: "bred", price: 20.0)

let cell1 = Cell(product: product1)
let cell2 = Cell(product: product2)
let cell3 = Cell(product: product3)

let screen1 = Screen(cell: cell1)
let screen2 = Screen(cell: cell2)
let screen3 = Screen(cell: cell3)

screen1.delegate = ShoppingCart.shared
screen2.delegate = ShoppingCart.shared
screen3.delegate = ShoppingCart.shared


screen1.selectProduct()
screen2.selectProduct()
screen3.selectProduct()


print("Итого: \(ShoppingCart.shared.getTotal())")
