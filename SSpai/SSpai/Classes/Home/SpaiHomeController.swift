//
//  SpaiHomeController.swift
//  SSpai
//
//  Created by Michael 柏 on 2017/10/10.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

class SpaiHomeController: SpaiViewController {
    
    var backScrollerView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - setupData
    func setupData() {
        
    }
    
    // MARK: - setupView
    func setupView() {
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        //初始化LoadingView
        let loadingViewFrame: CGRect = CGRect(x: 0, y: 130, width: SCREENW, height: SCREENH - 130)
        SpaiLoadingView.showLoadingViewToView(view: self.view, frame: loadingViewFrame)
        
        // 初始化背景scrollerView
        let backScrollerView: UIScrollView = UIScrollView(frame: UIScreen.main.bounds)
        self.view.insertSubview(backScrollerView, at: 0)
        self.backScrollerView = backScrollerView
        
        
        
        
        
    }
    
}
