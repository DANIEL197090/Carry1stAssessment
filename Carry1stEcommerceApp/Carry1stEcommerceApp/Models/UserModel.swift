//
//  UserModel.swift
//  Carry1stEcommerceApp
//
//  Created by Ifeanyi-Mbata on 12/1/24.
//

import Foundation
struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
