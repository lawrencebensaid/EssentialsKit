//
//  CollectionType.extension.swift
//  AnalytX
//
//  Created by Lawrence Bensaid on 10/11/2019.
//  Copyright © 2019 Software Essentials. All rights reserved.
//

import Foundation

extension Collection where Iterator.Element == [String:AnyObject] {
    
    public func toJSONString(options: JSONSerialization.WritingOptions = .prettyPrinted) -> String {
        if let arr = self as? [[String:AnyObject]],
            let dat = try? JSONSerialization.data(withJSONObject: arr, options: options),
            let str = String(data: dat, encoding: String.Encoding.utf8) {
            return str
        }
        return "[]"
    }
    
}
