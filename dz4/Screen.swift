//
//  Screen.swift
//  dz4
//
//  Created by Абдулла-Бек on 12/2/23.
//

import Foundation

class Screen {
    var cell: Cell
    var delegate: ScreenDelegate?
    
    init(cell: Cell) {
        self.cell = cell
    }
    func selectProduct() {
        delegate?.didSelect(product: cell.product)
    }
}
