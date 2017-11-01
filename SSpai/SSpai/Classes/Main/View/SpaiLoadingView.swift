//
//  SpaiLoadingView.swift
//  SSpai
//
//  Created by Michael 柏 on 2017/10/10.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

class SpaiLoadingView: UIView {
    
    // 隐藏传入view中的loadingView
    class func hideLoadingViewFromView(view: UIView) -> Bool {
        
        let arr: NSArray = view.subviews as NSArray
        let subviewsEnum: NSEnumerator = arr.reverseObjectEnumerator()
        
        for subview in subviewsEnum {
            
            if (subview as! UIView).isKind(of: self) {
                (subview as! UIView).removeFromSuperview()
                return true
            }
        }
        return false
    }
    //为传入view显示一个loadingView
    class func showLoadingViewToView(view: UIView, frame: CGRect) -> Bool {
        
        let loadingView = SpaiLoadingView(frame: frame)
        loadingView.backgroundColor = UIColor.white
        let indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        indicator.center = CGPoint(x: frame.size.width/2, y: frame.size.height/2 - 100)
        indicator.startAnimating()
        loadingView.addSubview(indicator)
        view.addSubview(loadingView)

        return true
    }
}
