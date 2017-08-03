//
//  Request.swift
//  Iris
//
//  Created by tiger on 2017/8/2.
//  Copyright © 2017年 vodjk. All rights reserved.
//

import Foundation

class Request {

    @discardableResult
    func parts(_ block: (UploadMultiPart) -> Void) -> Request {
        block(UploadMultiPart())
        return self
    }

    @discardableResult
    func parames(_ pms: [String: Any]) -> Request {
        return self
    }

    @discardableResult
    func timeout(_ time: TimeInterval) -> Request {
        return self
    }

    @discardableResult
    func headers(_ hds: [String: String]) -> Request {
        return self
    }

    @discardableResult
    func auth(username: String, password: String) -> Request {
        return self
    }
}
