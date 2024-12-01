//
//  EcommerceModel.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import Foundation
// MARK: - Product
struct Product: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let currencyCode: String
    let currencySymbol: String
    let quantity: Int
    let imageLocation: String
    let status: String
}

struct MockData  {
    static let sample = Product(id: 23,
                                name: "Game",
                                description: "This is a sample",
                                price: 99.0,
                                currencyCode: "USD",
                                currencySymbol: "$",
                                quantity: 1,
                                imageLocation: "",
                                status: "")
    static let sampleEcommerce = [sample, sample, sample, sample ]
    
    static let order1 = Product(id: 1,
                                name: "Game 1",
                                description: "This is a sample",
                                price: 99.0,
                                currencyCode: "USD",
                                currencySymbol: "$",
                                quantity: 1,
                                imageLocation: "",
                                status: "")
    
    static let order2 = Product(id: 2,
                                name: "Game 2",
                                description: "This is a sample",
                                price: 99.0,
                                currencyCode: "USD",
                                currencySymbol: "$",
                                quantity: 1,
                                imageLocation: "",
                                status: "")
    
    static let order3 = Product(id: 3,
                                name: "Game 3",
                                description: "This is a sample",
                                price: 99.0,
                                currencyCode: "USD",
                                currencySymbol: "$",
                                quantity: 1,
                                imageLocation: "",
                                status: "")
    static let sampleOrders = [order1, order2, order3]
}
