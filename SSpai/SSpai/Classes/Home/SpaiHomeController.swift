//
//  SpaiHomeController.swift
//  SSpai
//
//  Created by Michael 柏 on 2017/10/10.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit
import MJRefresh

class SpaiHomeController: SpaiViewController,UITableViewDelegate {
    
    var backScrollerView = UIScrollView()  // 页面容器scrollerView
    var newsData = NSMutableArray()       // 新闻数据
    var newsTableView = UITableView()    // 页面内容table
    var adsData = NSMutableArray()      // 广告数据
    var paiNewsData = NSMutableArray() // 付费内容数据
    
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
        
        // 初始化首页内容tableView
        let news: UITableView = UITableView(frame: UIScreen.main.bounds)
        news.delegate = self
        news.backgroundColor = UIColor.white
        news.contentInset = UIEdgeInsetsMake(130, 0, 0, 0)
        self.backScrollerView.addSubview(news)
        news.separatorStyle = .none
        self.newsTableView = news
     
        let refreshHeader : MJRefreshHeader = MJRefreshHeader(refreshingTarget: self, refreshingAction: #selector(dropDownToRefresh))
        self.backScrollerView.mj_header = refreshHeader
        
        //初始化头部导航栏
        
        
        
        
        
    }
    
    // MARK: - Click
    @objc func dropDownToRefresh() {
        
        let nowNews: NSMutableArray = self.newsData
        
        // 下来刷新的时候,将refresh文件里面的数据添加到目前数据的前面
    }
}
