//
//  Iris.swift
//  Iris
//
//  Created by tiger on 2017/7/31.
//  Copyright © 2017年 vodjk. All rights reserved.
//

struct Iris {

    @discardableResult
    static func get(url: URLComponentsConvertible = RqConfig.baseURL, api: String) -> Request {
        return request(.get, url, api)
    }

    @discardableResult
    static func post(url: URLComponentsConvertible = RqConfig.baseURL, api: String) -> Request {
        return request(.post, url, api)
    }

    static func upload() {

    }

    @discardableResult
    private static func request(_ method: Method, _ url: URLComponentsConvertible, _ api: String) -> Request {
        return Request()
    }

    /**
     根据api取消请求

     - parameter api: 接口地址
     */
    public func cancel(api: String) {

    }

    /**
     取消所有请求
     */
    public func cancelAll() {

    }

    /**
     根据请求id取消请求

     - parameter rqid: 请求di
     */
    public func cancel(rqid: Int) {

    }
}

enum Method: String {
    case get, post
}
