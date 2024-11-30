//
//  NetworkManager.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import Foundation
final class NetworkManager {
    
    static let shared = NetworkManager()
   // private let cache = NSCache<NSString, UIImage>()
    
    static let baseURL = "https://my-json-server.typicode.com/carry1stdeveloper/mock-product-api/"
    private let appetizerURL = baseURL + "productBundles"
    
    private init() {}
}
