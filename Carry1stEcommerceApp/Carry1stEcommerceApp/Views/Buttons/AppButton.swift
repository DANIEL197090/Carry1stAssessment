//
//  AppButton.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 12/1/24.
//

import SwiftUI

struct AppButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimaryColor)
            .cornerRadius(30)
    }
}

#Preview {
    AppButton(title: "Test title")
}
