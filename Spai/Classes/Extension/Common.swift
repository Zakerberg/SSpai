//
//  Extension.swift
//  shiXiNetWorkSwift
//
//  Created by heather on 2017/8/29.
//  Copyright © 2017年 heather. All rights reserved.
//

import UIKit
/// 归档路径
let PATH = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0] as NSString

/// 常用属性
let MARGIN : CGFloat = 10
let NORMALitemW = (SCREENW - 3 * MARGIN) / 2
let NORMALitemH = NORMALitemW * 3 / 4
let STATUSBARH: CGFloat = 20
let NAVIGATINNBARH: CGFloat = 44
let TABBARH: CGFloat = 49
let SCREENW = UIScreen.main.bounds.width
let SCREENH = UIScreen.main.bounds.height
let BACKGROUNDCOLOR: UIColor = UIColor(gray: 244)
let IMAGE_HEIGHT: CGFloat = 200

// MARK:- 自定义打印方法
func SXLog<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    
    #if DEBUG
        
        let fileName = (file as NSString).lastPathComponent
        
        print("\(fileName):(\(lineNum))-\(message)")
        
    #endif
}


// MARK:- 颜色方法
func ColorWithRGB (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}





