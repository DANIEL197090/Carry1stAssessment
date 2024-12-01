//
//  EcommerceTabView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

struct EcommerceTabView: View {
    var body: some View {
        TabView {
            ProductView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Products")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            CartView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Cart")
                }
        }
        .accentColor(Color("carry1stBlue"))
    }
}

#Preview {
    EcommerceTabView()
}
