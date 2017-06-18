//
//  RomanNumeralsTests.swift
//  RomanNumeralsTests
//
//  Created by Michelline Tran on 2/27/17.
//  Copyright © 2017 MichellineTran. All rights reserved.
//

import XCTest
@testable import RomanNumerals

class RomanNumeralsTests: XCTestCase {
    var converter = RomanNumeralConverter()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func assert(number: Int, convertsTo roman: String) {
        let romanNumeral = converter.convert(number: number)
        XCTAssertEqual(romanNumeral, roman)
    }

    func testZero() {
        let zero = converter.convert(number: 0)
        XCTAssertEqual(zero, "")
    }
    
    func testOne() {
        let one = converter.convert(number: 1)
        XCTAssertEqual(one, "I")
    }

    func testTwo() {
        let two = converter.convert(number: 2)
        XCTAssertEqual(two, "II")
    }

    func testThree() {
        let three = converter.convert(number: 3)
        XCTAssertEqual(three, "III")
    }

    func testFour() {
        let four = converter.convert(number: 4)
        XCTAssertEqual(four, "IV")
    }

    func testFive() {
        let five = converter.convert(number: 5)
        XCTAssertEqual(five, "V")
    }

    func testSix() {
        let six = converter.convert(number: 6)
        XCTAssertEqual(six, "VI")
    }

    func testSeven() {
        let seven = converter.convert(number: 7)
        XCTAssertEqual(seven, "VII")
    }

    func testEight() {
        let eight = converter.convert(number: 8)
        XCTAssertEqual(eight, "VIII")
    }

    func testNine() {
        let nine = converter.convert(number: 9)
        XCTAssertEqual(nine, "IX")
    }

    func testTen() {
        let ten = converter.convert(number: 10)
        XCTAssertEqual(ten, "X")
    }

    func testEleven() {
        let eleven = converter.convert(number: 11)
        XCTAssertEqual(eleven, "XI")
    }
    
    func testTwelve() {
        let twelve = converter.convert(number: 12)
        XCTAssertEqual(twelve, "XII")
    }

    func testThirteen() {
        let thirteen = converter.convert(number: 13)
        XCTAssertEqual(thirteen, "XIII")
    }

    func testFourteen() {
        let fourteen = converter.convert(number: 14)
        XCTAssertEqual(fourteen, "XIV")
    }

    func testFifteen() {
        assert(number: 15, convertsTo: "XV")
    }

    func testSixteen() {
        assert(number: 16, convertsTo: "XVI")
    }

    func testSeventeen() {
        assert(number: 17, convertsTo: "XVII")
    }

    func testEighteen() {
        assert(number: 18, convertsTo: "XVIII")
    }

    func testNineteen() {
        assert(number: 19, convertsTo: "XIX")
    }

    func testTwentyThree() {
        assert(number: 23, convertsTo: "XXIII")
    }

    func testThirtyOne() {
        assert(number: 31, convertsTo: "XXXI")
    }

    func testFortyThree() {
        assert(number: 43, convertsTo: "XLIII")
    }

    func testFortyFive() {
        assert(number: 45, convertsTo: "XLV")
    }

    func testFortySeven() {
        assert(number: 47, convertsTo: "XLVII")
    }

}

