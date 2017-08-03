//
//  File.swift
//  Iris
//
//  Created by tiger on 2017/8/2.
//  Copyright © 2017年 vodjk. All rights reserved.
//

import Foundation

class UploadMultiPart {
    var parts: [Part] = []

    func addPart(_ part: Part) {
        parts.append(part)
    }
}

public enum Part {
    case url(URL, String) // URL to a file, mimetype
    case data(String, Data, String) // filename, data, mimetype
    case text(String, String, String?) // filename, text, mimetype
}
