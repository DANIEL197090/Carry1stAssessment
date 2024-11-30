//
//  ProductViewModel.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import Foundation
final class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    func getAllProducts() {
        NetworkManager.shared.getAllProducts { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let products):
                    self.products = products
                case .failure(let error):
                    print("kkk" + error.localizedDescription)
                }
            }
        }
    }
}
