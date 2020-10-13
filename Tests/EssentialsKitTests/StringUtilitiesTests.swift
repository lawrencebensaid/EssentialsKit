//
//  StringUtilitiesTests.swift
//  
//
//  Created by Lawrence Bensaid on 13/10/2020.
//

import XCTest
@testable import EssentialsKit
    
final class StringUtilitiesTests: XCTestCase {
    
    
    override func setUpWithError() throws {
        
    }
    

    override func tearDownWithError() throws {
        
    }
    
    
    // MARK: encodeStringArray()
    
    func testEncodeStringArrayEmpty() {
        
        XCTAssertEqual(StringUtilities.encodeStringArray([]), nil)
        
    }
    
    
    func testEncodeStringArrayEmptyString() {
        
        XCTAssertEqual(StringUtilities.encodeStringArray([""]), nil)
        
    }
    
    
    func testEncodeStringArrayCommas() {
        
        XCTAssertEqual(StringUtilities.encodeStringArray([",", ","]), "%2C,%2C")
        
    }
    
    
    func testEncodeStringArrayOne() {
        
        XCTAssertEqual(StringUtilities.encodeStringArray(["Zero,One"]), "Zero%2COne")
        
    }
    
    
    func testEncodeStringArrayMultiple() {
        
        XCTAssertEqual(StringUtilities.encodeStringArray(["Zero", "One,Two", "Three"]), "Zero,One%2CTwo,Three")
        
    }
    
    
    // MARK: genericShortString()
    
    func testGenericShortStringNone() throws {
        
        XCTAssertEqual(StringUtilities.genericShortString([]), nil)
        
    }
    
    func testGenericShortStringEmptyString() throws {
        
        XCTAssertEqual(StringUtilities.genericShortString([""]), nil)
        
    }

    func testGenericShortStringOne() throws {
        
        XCTAssertEqual(StringUtilities.genericShortString(["One"]), "One")
        
    }
    
    func testGenericShortStringTwo() throws {
        
        XCTAssertEqual(StringUtilities.genericShortString(["One", "Two"]), "One +1")
        
    }
    
    func testGenericShortStringMultiple() throws {
        
        XCTAssertEqual(StringUtilities.genericShortString(["One", "Two", "Three"]), "One +2")
        
    }
    
    
    // MARK: genericMediumString()
    
    func testGenericMediumStringNone() throws {
        
        XCTAssertEqual(StringUtilities.genericMediumString([]), nil)
        
    }
    
    func testGenericMediumStringEmptyString() throws {
        
        XCTAssertEqual(StringUtilities.genericMediumString([""]), nil)
        
    }

    func testGenericMediumStringOne() throws {
        
        XCTAssertEqual(StringUtilities.genericMediumString(["One"]), "One")
        
    }
    
    func testGenericMediumStringTwo() throws {
        
        XCTAssertEqual(StringUtilities.genericMediumString(["One", "Two"]), "One & Two")
        
    }
    
    func testGenericMediumStringMultiple() throws {
        
        XCTAssertEqual(StringUtilities.genericMediumString(["One", "Two", "Three"]), "One +2")
        
    }
    
    
    // MARK: genericLongString()
    
    func testGenericLongStringNone() throws {
        
        XCTAssertEqual(StringUtilities.genericLongString([]), nil)
        
    }
    
    func testGenericLongStringEmptyString() throws {
        
        XCTAssertEqual(StringUtilities.genericLongString([""]), nil)
        
    }

    func testGenericLongStringOne() throws {
        
        XCTAssertEqual(StringUtilities.genericLongString(["One"]), "One")
        
    }
    
    func testGenericLongStringTwo() throws {
        
        XCTAssertEqual(StringUtilities.genericLongString(["One", "Two"]), "One & Two")
        
    }
    
    func testGenericLongStringMultiple() throws {
        
        XCTAssertEqual(StringUtilities.genericLongString(["One", "Two", "Three"]), "One, Two & Three")
        
    }
    

    static var allTests = [
        
        ("testEncodeStringArrayEmpty", testEncodeStringArrayEmpty),
        ("testEncodeStringArrayEmptyString", testEncodeStringArrayEmptyString),
        ("testEncodeStringArrayCommas", testEncodeStringArrayCommas),
        ("testEncodeStringArrayOne", testEncodeStringArrayOne),
        ("testEncodeStringArrayMultiple", testEncodeStringArrayMultiple),
        
        ("testGenericShortStringNone", testGenericShortStringNone),
        ("testGenericShortStringEmptyString", testGenericShortStringEmptyString),
        ("testGenericShortStringOne", testGenericShortStringOne),
        ("testGenericShortStringTwo", testGenericShortStringTwo),
        ("testGenericShortStringMultiple", testGenericShortStringMultiple),
        
        ("testGenericMediumStringNone", testGenericMediumStringNone),
        ("testGenericMediumStringEmptyString", testGenericMediumStringEmptyString),
        ("testGenericMediumStringOne", testGenericMediumStringOne),
        ("testGenericMediumStringTwo", testGenericMediumStringTwo),
        ("testGenericMediumStringMultiple", testGenericMediumStringMultiple),
        
        ("testGenericLongStringNone", testGenericLongStringNone),
        ("testGenericLongStringEmptyString", testGenericLongStringEmptyString),
        ("testGenericLongStringOne", testGenericLongStringOne),
        ("testGenericLongStringTwo", testGenericLongStringTwo),
        ("testGenericLongStringMultiple", testGenericLongStringMultiple),
        
    ]
    
}
