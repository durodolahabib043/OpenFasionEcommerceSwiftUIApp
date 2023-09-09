//
//  CartItem.swift
//  Open Fasion App
//
//  Created by Javid Shaikh on 25/08/23.
//

import Foundation

class CartItem {
    var product: Product
    var count: Int = 0
    
    init(product: Product, count: Int) {
        self.product = product
        self.count = count
    }
    
}
