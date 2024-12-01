//
//  ProductView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

import SwiftUI
struct ProductView: View {
    @StateObject private var viewModel = ProductViewModel()
  
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.products) { ecommerce in
                   ProductCell(ecommerce: ecommerce)
                }
                    .navigationTitle("Product")
            }
            .onAppear() {
                viewModel.getAllProducts()
             }
            if viewModel.isLoading {
                LoadingView()
             }
            }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        
    }
   
}

#Preview {
    ProductView()
}
