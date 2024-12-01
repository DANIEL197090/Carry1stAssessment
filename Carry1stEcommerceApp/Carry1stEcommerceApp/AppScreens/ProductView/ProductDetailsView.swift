//
//  ProductDetailsView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 12/1/24.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var order: Order
    let product: Product
    @Binding var isShowingDetailsView: Bool
    var body: some View {
        VStack {
            ProductRemoteImage(urlString: product.imageLocation)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(product.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(product.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack {
                    VStack(spacing: 5){
                        Text("Price")
                            .bold()
                            .fontWeight(.semibold)
                        Text("\(product.currencySymbol)\(product.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            Spacer().frame(height: 40)
            VStack() {
                Button {
                    order.add(product)
                    isShowingDetailsView = false
                } label: {
                    AppButton(title: "Add to Cart")
                }
                
                Button {
                    print("ss")
                } label: {
                    AppButton(title: "Buy Now")
                }
                .padding(.bottom, 30)
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay( Button {
            isShowingDetailsView = false
        } label: {
           cancelButton()
        }
                  , alignment: .topTrailing)
        
    }
}

#Preview {
    ProductDetailsView(product: MockData.sample, isShowingDetailsView: .constant(true))
}
