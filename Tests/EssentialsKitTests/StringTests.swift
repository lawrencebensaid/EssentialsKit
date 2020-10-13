//
//  StringTests.swift
//  
//
//  Created by Lawrence Bensaid on 02/10/2020.
//

import XCTest
@testable import EssentialsKit
    
final class StringTests: XCTestCase {
    
    
    func testCapitalizingFirstLetter() {
        
        XCTAssertEqual("hello, World!".capitalizingFirstLetter(), "Hello, World!")
        
    }
    
    
    func testCapitalizingFirstLetterEmpty() {
        
        XCTAssertEqual("".capitalizingFirstLetter(), "")
        
    }
    
    
    func testDeletingPrefix() {
        
        XCTAssertEqual("Hello, World!".deletingPrefix("Hello, "), "World!")
        
    }
    
    
    func testDeletingPrefixEmpty() {
        
        XCTAssertEqual("".deletingPrefix("Hello, "), "")
        
    }
    
    
    func testIsNumber() {
        
        XCTAssertTrue("26".isNumber)
        
    }
    
    
    func testIsNumberNaN() {
        
        XCTAssertFalse("a".isNumber)
        
    }
    
    
    func testIsNumberEmpty() {
        
        XCTAssertFalse("".isNumber)
        
    }
    

    static var allTests = [
        ("testCapitalizingFirstLetter", testCapitalizingFirstLetter),
        ("testCapitalizingFirstLetterEmpty", testCapitalizingFirstLetterEmpty),
        ("testDeletingPrefix", testDeletingPrefix),
        ("testDeletingPrefixEmpty", testDeletingPrefixEmpty),
        ("testIsNumber", testIsNumber),
        ("testIsNumberNaN", testIsNumberNaN),
        ("testIsNumberEmpty", testIsNumberEmpty),
    ]
    
}
