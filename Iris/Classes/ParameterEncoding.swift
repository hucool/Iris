//
//  ParameterEncoding.swift
//  Iris
//
//  Created by yang on 2016/11/15.
//  Copyright © 2016年 xinma. All rights reserved.
//

import Foundation

struct ParameterEncoding {

    static func query(parameters: [String: Any]) -> String {
        var components: [(String, String)] = []
        let keys = parameters.keys.sorted(by: <)
        for key in keys {
            let value = parameters[key]!
            components += queryComponents(key: key, value as AnyObject)
        }
        return (components.map { "\($0)=\($1)" } as [String]).joined(separator: "&")
    }

    static  func queryComponents(key: String, _ value: Any) -> [(String, String)] {
        var components: [(String, String)] = []

        if let dictionary = value as? [String: Any] {
            for (nestedKey, value) in dictionary {
                components += queryComponents(key: "\(key)[\(nestedKey)]", value)
            }
        } else if let array = value as? [Any] {
            for value in array {
                components += queryComponents(key: "\(key)[]", value)
            }
        } else if let value = value as? NSNumber {
            if value.isBool {
                components.append((escape(key), escape((value.boolValue ? "1" : "0"))))
            } else {
                components.append((escape(key), escape("\(value)")))
            }
        } else if let bool = value as? Bool {
            components.append((escape(key), escape((bool ? "1" : "0"))))
        } else {
            components.append((escape( key), escape("\(value)")))
        }

        return components
    }

    static private func escape(_ string: String) -> String {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="
        var allowedCharacterSet = CharacterSet.urlQueryAllowed
        allowedCharacterSet.remove(charactersIn: generalDelimitersToEncode + subDelimitersToEncode)
        let escaped = string.addingPercentEncoding(withAllowedCharacters: allowedCharacterSet)
        return escaped!
    }
}

extension NSNumber {
    fileprivate var isBool: Bool {
        return CFBooleanGetTypeID() == CFGetTypeID(self)
    }
}
