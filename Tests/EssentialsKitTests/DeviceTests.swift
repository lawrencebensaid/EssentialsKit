//
//  DeviceTests.swift
//
//
//  Created by Lawrence Bensaid on 02/10/2020.
//

import XCTest
@testable import EssentialsKit

final class DeviceTests: XCTestCase {
    
    @available(iOS 10, *)
    func testModelName() {
        
        XCTAssertEqual(Device.modelName("iPhone12,5"), "iPhone 11 Pro Max")
        
    }
    
    
    @available(iOS 10, *)
    static var allTests = [
        ("testModelName", testModelName),
    ]
    
}
