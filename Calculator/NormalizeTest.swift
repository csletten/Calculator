//
//  NormalizeTest.swift
//  CalculatorTests
//
//  Created by Christian Sletten on 28.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import XCTest

@testable import Calculator

class NormalizeTest: XCTestCase {
    
    func testIntegers() {
        XCTAssertEqual("4", normalize(stringValue: "4"))
        XCTAssertEqual("0", normalize(stringValue: "-0"))
        XCTAssertEqual("2", normalize(stringValue: "02"))
    }
    
    func testDoubles() {
        XCTAssertEqual("4", normalize(stringValue: "4.0"))
        XCTAssertEqual("0", normalize(stringValue: "-0"))
        XCTAssertEqual("4.7", normalize(stringValue: "4.700000"))
        XCTAssertEqual("-4.7", normalize(stringValue: "-4.700000"))
        XCTAssertEqual("0", normalize(stringValue: "0.000"))
        XCTAssertEqual("100.01", normalize(stringValue: "100.0100"))
        XCTAssertEqual("-4.7", normalize(stringValue: "-4.700000"))
    }
    
}
