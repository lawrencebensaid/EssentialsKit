//
//  StringUtilities.swift
//  
//
//  Created by Lawrence Bensaid on 13/10/2020.
//

import Foundation

public class StringUtilities {
    
    public enum StringFormatSize {
        case short
        case medium
        case long
    }
    
    public static func encodeStringArray(_ stringArray: [String]) -> String? {
        var components = stringArray
        for index in 0..<components.count {
            components[index] = components[index].components(separatedBy: ",").joined(separator: "%2C")
        }
        let string = components.joined(separator: ",")
        return string.isEmpty ? nil : string
    }
    
    public static func decodeStringArray(_ arrayString: String?) -> [String] {
        var array: [String] = arrayString?.components(separatedBy: ",") ?? []
        for index in 0..<array.count {
            array[index] = array[index].components(separatedBy: "%2C").joined(separator: ",")
        }
        return array
    }
    
    public static func genericString(_ components: [String], format: StringFormatSize = .medium) -> String? {
        switch format {
        case .short: return genericShortString(components)
        case .medium: return genericMediumString(components)
        case .long: return genericLongString(components)
        }
    }
    
    public static func genericShortString(_ components: [String]) -> String? {
        let string = components.count > 0 ? components.count > 1 ? "\(components.first!) +\(components.count - 1)" : "\(components.first!)" : nil
        return string?.isEmpty == true ? nil : string
    }
    
    public static func genericMediumString(_ components: [String]) -> String? {
        let string = components.count > 0 ? components.count > 1 ? components.count > 2 ? "\(components.first!) +\(components.count - 1)" : "\(components.first!) & \(components.last!)" : "\(components.first!)" : nil
        return string?.isEmpty == true ? nil : string
    }
    
    public static func genericLongString(_ components: [String]) -> String? {
        if components.isEmpty { return nil }
        var string = components.first!
        if components.count > 1 {
            let lastIndex = components.count - 1
            for index in 1...lastIndex {
                string += "\(index == lastIndex ? " &" : ",") \(components[index])"
            }
        }
        return string.isEmpty ? nil : string
    }
    
}
