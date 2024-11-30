//
//  ProductView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

import SwiftUI
struct ProductView: View {
    var body: some View {
        NavigationView {
            List(MockData.sampleEcommerce) { ecommerce in
               ProductCell(ecommerce: ecommerce)
            }
                .navigationTitle("Product")
        }
       
    }
}

#Preview {
    ProductView()
}
