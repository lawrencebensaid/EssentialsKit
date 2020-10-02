//
//  StringExt.swift
//  AnalytX
//
//  Created by Lawrence Bensaid on 03/11/2018.
//  Copyright © 2018 Software Essentials. All rights reserved.
//

import Foundation

@available(iOS 11, *)
extension String  {
    
    public var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    public var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
    
    public func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
    
    public func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    public mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
}
