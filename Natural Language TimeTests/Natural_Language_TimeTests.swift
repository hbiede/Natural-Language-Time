//
//  Natural_Language_TimeTests.swift
//  Natural Langauge TimeTests
//
//  Created by Hundter Biede on 7/30/18.
//  Copyright © 2018 Hundter Biede. All rights reserved.
//

import XCTest

class Natural_Language_TimeTests: XCTestCase {

    func testTimeString() {
        var timeTest = NaturalLanguageTime.NatTime()
        
        timeTest.timeString = "3-23"
        XCTAssertEqual(timeTest.timeString, "3-23")

        timeTest.timeString = "Fail String"
        XCTAssertEqual(timeTest.timeString, "Default Time")

        timeTest.timeString = "3-x"
        XCTAssertEqual(timeTest.timeString, "Default Time")

        timeTest.timeString = "x-23"
        XCTAssertEqual(timeTest.timeString, "Default Time")
    }

    func testRoundArithmatic() {
        XCTAssertEqual(Int(round(Double(0) / 5)) * 5, 0)
        XCTAssertEqual(Int(round(Double(2) / 5)) * 5, 0)
        XCTAssertEqual(Int(round(Double(4) / 5)) * 5, 5)
        XCTAssertEqual(Int(round(Double(5) / 5)) * 5, 5)
        XCTAssertEqual(Int(round(Double(12) / 5)) * 5, 10)
        XCTAssertEqual(Int(round(Double(13) / 5)) * 5,15)
        XCTAssertEqual(Int(round(Double(15) / 5)) * 5, 15)
    }

    func testNatLang() {
        var timeTest = NaturalLanguageTime.NatTime()

        timeTest.timeString = "3-23"
        XCTAssertEqual(timeTest.getNatLangString(), "25 Past Three")

        timeTest.timeString = "3-30"
        XCTAssertEqual(timeTest.getNatLangString(), "Half Past Three")

        timeTest.timeString = "3-45"
        XCTAssertEqual(timeTest.getNatLangString(), "Quarter Til Four")

        timeTest.timeString = "3-00"
        XCTAssertEqual(timeTest.getNatLangString(), "Three O'clock")
    }
}
