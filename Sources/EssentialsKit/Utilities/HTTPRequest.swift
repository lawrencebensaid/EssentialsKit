//
//  Request.swift
//
//
//  Created by Lawrence Bensaid on 24/05/2019.
//

import Foundation

@available(iOS 11, *)
public struct HTTPRequest: Equatable {
    
    public static func == (lhs: HTTPRequest, rhs: HTTPRequest) -> Bool {
        lhs.uri == rhs.uri && lhs.method == rhs.method && lhs.headers == rhs.headers
    }
    
    public var uri: URL
    
    public var method: HTTPMethodType
    
    public var body: [String: Any]
    
    public var headers: [String: String]
    
    
    public init(uri: URL, method: HTTPMethodType = .get, headers: [String: String] = [:], body: [String: String] = [:]) {
        self.uri = uri
        self.method = method
        self.headers = headers
        self.body = body
    }
    
    public init(uri: URL, method: HTTPMethodType = .get, headers: [String: String] = [:], body: [String: Any] = [:]) {
        self.uri = uri
        self.method = method
        self.headers = headers
        self.body = body
    }
    
    @available(*, deprecated, renamed: "callXForm")
    public func call(completion: ((_ response: HTTPResponse) -> ())?) {
        callXForm(completion: completion)
    }
    
    
    public func callXForm(completion: ((_ response: HTTPResponse) -> ())?) {
        var request = URLRequest(url: uri)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        for header in headers {
            request.setValue(header.value, forHTTPHeaderField: header.key)
        }
        request.httpMethod = method.rawValue
        if body.count > 0 {
            var postBody = ""
            for parameter in body {
                postBody += "\(parameter.key)=\(parameter.value)&"
            }
            postBody = String(postBody.dropLast())
            request.httpBody = String(postBody).data(using: .utf8)
        }
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let response = response as? HTTPURLResponse {
                guard let data = data else { return }
                #if DEBUG
                print("[\(self.uri.absoluteString)]:[\(self.method.rawValue)]:[\(response.statusCode)]")
                #endif
                DispatchQueue.main.async {
                    completion?(HTTPResponse(data: data, response: response))
                }
            }
        }.resume()
    }
    
    
    public func callJson(completion: ((_ response: HTTPResponse) -> ())?) {
        var request = URLRequest(url: uri)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        for header in headers {
            request.setValue(header.value, forHTTPHeaderField: header.key)
        }
        request.httpMethod = method.rawValue
        if body.count > 0 {
            guard let jsonData = try? JSONSerialization.data(withJSONObject: body) else { return }
            request.httpBody = jsonData
        }
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let response = response as? HTTPURLResponse {
                guard let data = data else { return }
                #if DEBUG
                print("[\(self.uri.absoluteString)]:[\(self.method.rawValue)]:[\(response.statusCode)]")
                #endif
                DispatchQueue.main.async {
                    completion?(HTTPResponse(data: data, response: response))
                }
            }
        }.resume()
    }
    
}
