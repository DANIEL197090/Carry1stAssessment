//
//  Carry1stEcommerceAppTests.swift
//  Carry1stEcommerceAppTests
//
//  Created by Ifeanyi-Mbata on 11/30/24.
//

import XCTest
@testable import Carry1stEcommerceApp

final class Carry1stEcommerceAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    // MARK: - Order Tests
    
    func testAddProduct() {
        // Given
        let order = Order()
        let product = Product(
            id: 1,
            name: "Sample Product",
            description: "Description",
            price: 99.99,
            currencyCode: "USD",
            currencySymbol: "$",
            quantity: 1,
            imageLocation: "",
            status: ""
        )
        
        // When
        order.add(product)
        
        // Then
        XCTAssertEqual(order.items.count, 1, "The product was not added to the order.")
        XCTAssertEqual(order.items.first?.name, "Sample Product", "The product name does not match.")
    }
    
    func testDeleteItems() {
        // Given
        let order = Order()
        let product1 = Product(
            id: 1,
            name: "Product 1",
            description: "Description",
            price: 50.0,
            currencyCode: "USD",
            currencySymbol: "$",
            quantity: 1,
            imageLocation: "",
            status: ""
        )
        let product2 = Product(
            id: 2,
            name: "Product 2",
            description: "Description",
            price: 75.0,
            currencyCode: "USD",
            currencySymbol: "$",
            quantity: 1,
            imageLocation: "",
            status: ""
        )
        order.add(product1)
        order.add(product2)
        
        // When
        order.deleteItems(at: IndexSet(integer: 0)) // Delete the first item
        
        // Then
        XCTAssertEqual(order.items.count, 1, "The item was not deleted from the order.")
        XCTAssertEqual(order.items.first?.name, "Product 2", "The remaining product is not as expected.")
    }
    
    func testTotalPrice() {
        // Given
        let order = Order()
        let product1 = Product(
            id: 1,
            name: "Product 1",
            description: "Description",
            price: 50.0,
            currencyCode: "USD",
            currencySymbol: "$",
            quantity: 1,
            imageLocation: "",
            status: ""
        )
        let product2 = Product(
            id: 2,
            name: "Product 2",
            description: "Description",
            price: 75.0,
            currencyCode: "USD",
            currencySymbol: "$",
            quantity: 1,
            imageLocation: "",
            status: ""
        )
        order.add(product1)
        order.add(product2)
        
        // When
        let totalPrice = order.totalPrice
        
        // Then
        XCTAssertEqual(totalPrice, 125.0, "The total price is not calculated correctly.")
    }
}
