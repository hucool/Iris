//
//  Request.swift
//  Iris
//
//  Created by tiger on 2017/8/2.
//  Copyright © 2017年 vodjk. All rights reserved.
//

import Foundation

class Request {

    func parts(_ block: (UploadMultipart) -> Void) -> Request {
        block(UploadMultipart())
        return self
    }

    func parames(_ pms: [String: Any]) -> Request {
        return self
    }

    func timeout(_ time: TimeInterval) -> Request {
        return self
    }

    func headers(_ hds: [String: String]) -> Request {
        return self
    }

    func auth(username: String, password: String) -> Request {
        return self
    }
}
