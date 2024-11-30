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
        NavigationView {
            List(viewModel.products) { ecommerce in
               ProductCell(ecommerce: ecommerce)
            }
                .navigationTitle("Product")
        }
        .onAppear() {
            viewModel.getAllProducts()
        }
       
    }
   
}

#Preview {
    ProductView()
}
