//
//  EcommerceTabView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

struct EcommerceTabView: View {
    @EnvironmentObject var cartItems: Order

    // Create an instance of ProductViewModel
    private var productViewModel = ProductViewModel()

    var body: some View {
        TabView {
            ProductView(viewModel: productViewModel)
                .tabItem { Label("Products", systemImage: "house") }
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            CartView()
                .tabItem { Label("Cart", systemImage: "bag") }
                .badge(cartItems.items.count)
        }
        .accentColor(Color.brandPrimaryColor)
    }
}

#Preview {
    // Provide necessary environment objects and mock data
    let mockOrder = Order()
    return EcommerceTabView()
        .environmentObject(mockOrder)
}
