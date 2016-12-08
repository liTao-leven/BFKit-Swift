//
//  BFPasswordTests.swift
//  BFKit
//
//  Created by Fabrizio on 22/10/16.
//  Copyright © 2016 Fabrizio Brancati. All rights reserved.
//

import XCTest
import Foundation
@testable import BFKit

class BFPasswordTests: XCTestCase {
    static let allTests = [
        ("testStrength", testStrength)
    ]
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testStrength() {
        let password = "TestPassword92"
        let strength = BFPassword.strength(password: password)
        
        XCTAssert(strength == .average)
    }
}
