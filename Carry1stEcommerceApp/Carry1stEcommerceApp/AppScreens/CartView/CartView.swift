//
//  CartView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI
struct CartView: View {
    @EnvironmentObject var cartItems: Order
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(cartItems.items) { cart in
                            ProductCell(ecommerce: cart)
                        }
                        .onDelete(perform: cartItems.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print()
                    } label: {
                        AppButton(title: "$\(cartItems.totalPrice, specifier: "%.2f") - Place Order(s)")
                    }
                    .padding(.bottom , 25)
                }
                if cartItems.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "Your have no items in your cart.\nPlease go shopping.")
                }
            }
            .navigationTitle("Cart")
        }
        
    }
   
}

#Preview {
    CartView()
}

