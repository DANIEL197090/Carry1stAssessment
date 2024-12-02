//
//  ProductView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI
struct ProductView: View {
    @StateObject private var viewModel: ProductViewModel

        init(viewModel: ProductViewModel) {
            _viewModel = StateObject(wrappedValue: viewModel)
        }

    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.products) { ecommerce in
                   ProductCell(ecommerce: ecommerce, showDeleteButton: false)
                        .onTapGesture {
                            viewModel.selectedProduct = ecommerce
                            viewModel.isShowingDetailsView = true
                        }
                }
                    .navigationTitle("Product")
                    .disabled(viewModel.isShowingDetailsView)
            }
            .onAppear() {
                viewModel.getAllProducts()
             }
            .blur(radius: viewModel.isShowingDetailsView ? 20 : 0)
            if viewModel.isShowingDetailsView {
                ProductDetailsView(product: viewModel.selectedProduct!, isShowingDetailsView: $viewModel.isShowingDetailsView)
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
    let mockViewModel = ProductViewModel(networkService: MockNetworkService())
    return ProductView(viewModel: mockViewModel)
}
