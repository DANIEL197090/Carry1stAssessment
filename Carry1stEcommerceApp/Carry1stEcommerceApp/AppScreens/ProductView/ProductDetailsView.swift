//
//  ProductDetailsView.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 12/1/24.
//

import SwiftUI

struct ProductDetailsView: View {
    let product: Product
    var body: some View {
        VStack {
            Image("image")
                .resizable()
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
                    print("ss")
                } label: {
                    Text("Add to Cart")
                        .font(.title2)
                        .fontWeight(.bold) 
                        .foregroundColor(.white)
                        .frame(width: 260, height: 50)
                        .background(Color.brandPrimaryColor)
                        .cornerRadius(30)
                }
                
                Button {
                    print("ss")
                } label: {
                    Text("Buy Now")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(width: 260, height: 50)
                        .background(Color.brandPrimaryColor)
                        .cornerRadius(30)
                }
                .padding(.bottom, 30)
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay( Button {
            print("ss")
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.medium)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }
                  , alignment: .topTrailing)
        
    }
}

#Preview {
    ProductDetailsView(product: MockData.sample)
}
