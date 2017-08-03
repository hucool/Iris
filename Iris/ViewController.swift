//
//  ViewController.swift
//  Iris
//
//  Created by tiger on 2017/7/31.
//  Copyright © 2017年 vodjk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Iris.get(api: "")
                .timeout(10)
                .parames(["name": "tiger"])
                .headers(["name": "tiger"])
                .parts { (upload) in
                    upload.addPart(.text("", "", ""))
                }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
