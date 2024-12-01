//
//  EcommerceTabView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

struct EcommerceTabView: View {
    @EnvironmentObject var cartItems: Order
    var body: some View {
        TabView {
            ProductView()
                .tabItem { Label("Products", systemImage: "house")}
            AccountView()
                .tabItem {Label("Account", systemImage: "person")}
            CartView()
                .tabItem { Label("Cart", systemImage:"bag")}
                .badge(cartItems.items.count)
        }
        .accentColor(Color.brandPrimaryColor)
    }
}

#Preview {
    EcommerceTabView()
}
