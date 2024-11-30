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
}
