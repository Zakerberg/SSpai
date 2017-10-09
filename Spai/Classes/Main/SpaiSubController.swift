//
//  SpaiSubController.swift
//  Spai
//
//  Created by heather on 2017/9/29.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit
import WebKit

class SpaiSubController: SpaiViewController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: - 解决右划返回手势失效
        let swipe = UISwipeGestureRecognizer(target: self, action: nil)
        swipe.direction = .right
        self.view.addGestureRecognizer(swipe)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
