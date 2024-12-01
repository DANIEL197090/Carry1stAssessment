//
//  String.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 12/1/24.
//


import RegexBuilder
import Foundation
extension String {
    var isValidEmail: Bool {
        let emailFormat         = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
