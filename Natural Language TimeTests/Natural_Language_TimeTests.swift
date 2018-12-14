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

        natTime.timeString = "00:00"
        XCTAssert(natTime.getNatLangString() == "Midnight")

        natTime.timeString = "00:05"
        XCTAssert(natTime.getNatLangString() == "Five Past Midnight")

        natTime.timeString = "00:10"
        XCTAssert(natTime.getNatLangString() == "Ten Past Midnight")

        natTime.timeString = "00:15"
        XCTAssert(natTime.getNatLangString() == "Quarter Past Midnight")

        natTime.timeString = "00:20"
        XCTAssert(natTime.getNatLangString() == "Twelve Twenty")

        natTime.timeString = "00:25"
        XCTAssert(natTime.getNatLangString() == "Twelve Twenty Five")

        natTime.timeString = "00:30"
        XCTAssert(natTime.getNatLangString() == "Half Past Midnight")

        natTime.timeString = "00:35"
        XCTAssert(natTime.getNatLangString() == "Twelve Thirty Five")

        natTime.timeString = "00:45"
        XCTAssert(natTime.getNatLangString() == "Quarter Til One")

        natTime.timeString = "00:50"
        XCTAssert(natTime.getNatLangString() == "Ten Til One")

        natTime.timeString = "00:55"
        XCTAssert(natTime.getNatLangString() == "Five Til One")
    }
}
