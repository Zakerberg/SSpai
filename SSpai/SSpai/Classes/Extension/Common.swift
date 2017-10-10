//
//  Common.swift
//  SSpai
//
//  Created by Michael 柏 on 2017/10/10.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

let SCREENW = UIScreen.main.bounds.width
let SCREENH = UIScreen.main.bounds.height
let TABBARH: CGFloat = 49


//MARK: - Log
func SpaiLog<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    
    #if DEBUG

        let fileName = (file as NSString).lastPathComponent
    
        print("(\(fileName):(\(lineNum))-\(message)")
    
    #endif
}










