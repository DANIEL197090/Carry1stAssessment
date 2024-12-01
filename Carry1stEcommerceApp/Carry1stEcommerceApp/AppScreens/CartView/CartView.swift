//
//  CartView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI
struct CartView: View {
    @State private var cartItems = MockData.sampleOrders
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(MockData.sampleOrders) { cart in
                        ProductCell(ecommerce: cart)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Cart")
        }
        
    }
    func deleteItems(at offSets: IndexSet) {
        cartItems.remove(atOffsets: offSets)
    }
}

#Preview {
    CartView()
}
