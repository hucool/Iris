//
//  URLComponents.swift
//  Iris
//
//  Created by tiger on 2017/8/2.
//  Copyright © 2017年 vodjk. All rights reserved.
//

import Foundation

public protocol URLComponentsConvertible {
    var urlComponents: URLComponents? { get }
}

extension String: URLComponentsConvertible {
    public var urlComponents: URLComponents? {
        return URLComponents(string: self)
    }
}

extension URL: URLComponentsConvertible {
    public var urlComponents: URLComponents? {
        return URLComponents(url: self, resolvingAgainstBaseURL: true)
    }
}
