//
//  Response.swift
//
//
//  Created by Lawrence Bensaid on 24/05/2019.
//

import Foundation

@available(iOS 11, *)
public struct HTTPResponse: Equatable {
    
    public let status: Int
    
    public let url: URL?
    
    public let fullResponse: HTTPURLResponse
    
    public var data: Data
    
    public init(data: Data, response: HTTPURLResponse) {
        self.status = response.statusCode
        self.url = response.url
        self.fullResponse = response
        self.data = data
    }
    
    public func getJSON() -> Any {
        guard let data = String(data: self.data, encoding: String.Encoding.utf8) else { return [:] }
        do {
            let json = try JSONSerialization.jsonObject(with: self.data, options: [])
            
            if data.prefix(1) == "[" && data.suffix(1) == "]" {
                return json as? [Any] ?? [:]
            } else {
                return json as? [String: Any] ?? [:]
            }
        } catch let error {
            print(error.localizedDescription)
            return [:]
        }
    }
    
    public func getXML() -> Any {
        //        guard let data = String(data: self.data, encoding: String.Encoding.utf8) else { return [:] }
        
        let xml = XMLParser(data: self.data)
        print(xml)
        return [:]
    }
    
    public func getRawData() -> Data {
        return self.data
    }
    
}
