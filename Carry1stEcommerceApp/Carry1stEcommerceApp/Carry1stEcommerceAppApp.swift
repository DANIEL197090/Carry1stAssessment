//
//  Carry1stEcommerceAppApp.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import SwiftUI

@main
struct Carry1stEcommerceAppApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            EcommerceTabView().environmentObject(order)
        }
    }
}
