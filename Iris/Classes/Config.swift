//
//  Config.swift
//  Iris
//
//  Created by tiger on 2017/8/2.
//  Copyright © 2017年 vodjk. All rights reserved.
//

import Foundation

struct RqConfig {
    /// 请求接触地址
    static var baseURL = ""
    /// 请求超时时间
    static var timeout: TimeInterval = 10
    /// 全局请求参数
    static var paramet: [String: Any] = [:]
    /// 全局请求头
    static var header: [String: String] = [:]
}
