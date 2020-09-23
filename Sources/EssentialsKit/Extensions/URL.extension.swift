//
//  URLExtension.swift
//  AnalytX
//
//  Created by Lawrence Bensaid on 23/05/2019.
//  Copyright © 2019 Software Essentials. All rights reserved.
//

#if os(iOS)
import UIKit

extension URL {
    
    public static func verifyUrl(urlString: String?) -> Bool {
        if let urlString = urlString {
            if let url = URL(string: urlString) {
                return UIApplication.shared.canOpenURL(url)
            }
        }
        return false
    }
    
    public func appendQueryItem(_ queryItem: URLQueryItem) -> URL? {
        guard var uri = URLComponents(string: self.absoluteString) else { return nil }
        let queryItems = uri.queryItems ?? []
        var newQueryItems: [URLQueryItem] = []
        for queryItem in queryItems {
            newQueryItems.append(queryItem)
        }
        newQueryItems.append(queryItem)
        uri.queryItems = newQueryItems
        guard let url = uri.url else { return nil }
        return url
    }
    
}
#endif
