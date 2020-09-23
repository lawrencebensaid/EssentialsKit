//
//  Date.swift
// AnalytX
//
//  Created by Lawrence Bensaid on 13/10/2019.
//  Copyright © 2019 software-essentials. All rights reserved.
//

import Foundation

fileprivate let TIME_SECOND = 1
fileprivate let TIME_MINUTE = TIME_SECOND * 60
fileprivate let TIME_HOUR = TIME_MINUTE * 60
fileprivate let TIME_DAY = TIME_HOUR * 24
fileprivate let TIME_WEEK = TIME_DAY * 7

@available(iOS 11, *)
extension Date {
    
    public var secondsSince1970: Int64 {
        return Int64((self.timeIntervalSince1970).rounded())
    }
    
    public var millisecondsSince1970: Int64 {
        return Int64((self.timeIntervalSince1970 * 1000.0).rounded())
    }

    public init?(secondsSince1970: Int64?) {
        guard let seconds = secondsSince1970 else { return nil }
        self = Date(timeIntervalSince1970: TimeInterval(seconds))
    }
    
    public init?(millisecondsSince1970: Int64?) {
        guard let milliseconds = millisecondsSince1970 else { return nil }
        self = Date(timeIntervalSince1970: TimeInterval(milliseconds) / 1000)
    }
    
}
