//
//  HTTPMethodType.swift
//  AnalytX
//
//  Created by Lawrence Bensaid on 14/10/2018.
//  Copyright © 2018 Software Essentials. All rights reserved.
//

import Foundation

@available(iOS 11, *)
public enum HTTPMethodType: String {
    case post = "POST"
    case get = "GET"
    case delete = "DELETE"
    case put = "PUT"
}
