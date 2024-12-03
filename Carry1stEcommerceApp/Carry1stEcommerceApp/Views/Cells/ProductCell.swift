//
//  ProductCell.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

struct ProductCell: View {
    var ecommerce: Product
    var showDeleteButton: Bool = true // Determines if the delete button is visible
    var onDelete: (() -> Void)? // Closure to handle the delete action

    var body: some View {
        HStack {
            ProductRemoteImage(urlString: ecommerce.imageLocation)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(9)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(ecommerce.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .accessibilityIdentifier("ProductName")
                Text("\(ecommerce.currencySymbol)\(ecommerce.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
            
            Spacer()
            
            if showDeleteButton {
                // Delete button
                Button(action: {
                    onDelete?()
                }) {
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                        .padding()
                }
            }
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    ProductCell(ecommerce: MockData.sample, showDeleteButton: true)
}

