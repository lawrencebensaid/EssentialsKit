import XCTest
@testable import EssentialsKit

final class EssentialsKitTests: XCTestCase {
    
    @available(iOS 10, *)
    func testDeviceModelName() {
        
        XCTAssertEqual(Device.modelName("iPhone12,5"), "iPhone 11 Pro Max")
        
    }
    
    
    func testStringCapitalization() {
        
        XCTAssertEqual("hello, World!".capitalizingFirstLetter(), "Hello, World!")
        
    }
    
    
    func testStringCapitalizationEmpty() {
        
        XCTAssertEqual("".capitalizingFirstLetter(), "")
        
    }
    
    
    func testStringPrefixDeletion() {
        
        XCTAssertEqual("Hello, World!".deletingPrefix("Hello, "), "World!")
        
    }
    
    
    func testStringPrefixDeletionEmpty() {
        
        XCTAssertEqual("".deletingPrefix("Hello, "), "")
        
    }
    
    
    func testStringNumber() {
        
        XCTAssertEqual("26".isNumber, true)
        
    }
    
    
    func testStringNumberNaN() {
        
        XCTAssertEqual("a".isNumber, false)
        
    }
    
    
    func testStringNumberEmpty() {
        
        XCTAssertEqual("".isNumber, false)
        
    }
    

    @available(iOS 10, *)
    static var allTests = [
        ("testDeviceModelName", testDeviceModelName),
        ("testStringCapitalization", testStringCapitalization),
        ("testStringCapitalizationEmpty", testStringCapitalizationEmpty),
    ]
    
}
