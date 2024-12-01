//
//  ProductCell.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

struct ProductCell: View {
    var ecommerce: Product
    var body: some View {
        HStack {
            ProductRemoteImage(urlString: ecommerce.imageLocation)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(9)
            VStack(alignment: .leading, spacing: 5)  {
                Text(ecommerce.name)
                    .font(.title2)
                .fontWeight(.medium)
                
                Text("\(ecommerce.currencySymbol)\(ecommerce.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
                
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ProductCell(ecommerce: MockData.sample)
}
