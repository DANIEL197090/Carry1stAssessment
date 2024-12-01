//
//  ProductViewModel.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import Foundation
final class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var  isShowingDetailsView = false
    @Published var  selectedProduct: Product?
    
    func getAllProducts() {
        isLoading = true
        NetworkManager.shared.getAllProducts { result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let products):
                    self.products = products
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
