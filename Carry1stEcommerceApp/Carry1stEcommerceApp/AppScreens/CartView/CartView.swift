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
                            ProductCell(
                                ecommerce: cart,
                                showDeleteButton: true, // Show delete button
                                onDelete: {
                                    if let index = cartItems.items.firstIndex(where: { $0.id == cart.id }) {
                                        cartItems.items.remove(at: index)
                                    }
                                }
                            )
                        }
                        .onDelete(perform: cartItems.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Place order tapped")
                    } label: {
                        AppButton(title: "$\(cartItems.totalPrice, specifier: "%.2f") - Place Order(s)")
                    }
                    .padding(.bottom, 25)
                }
                
                if cartItems.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your cart.\nPlease go shopping.")
                }
            }
            .navigationTitle("Cart")
        }
    }
}
