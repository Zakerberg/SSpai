//
//  Extension.swift
//  shiXiNetWorkSwift
//
//  Created by heather on 2017/8/29.
//  Copyright © 2017年 heather. All rights reserved.
//

import UIKit
import CoreGraphics

extension NSObject {
    
    func swiftClassFromString(className: String) -> UIViewController! {
        
        if  let appName: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String? {
            //拼接控制器名
            let classStringName = "\(appName).\(className)"
            //将控制名转换为类
            let classType = NSClassFromString(classStringName) as? UIViewController.Type
            if let type = classType {
                let newVC = type.init()
                return newVC
            }
        }
        return nil;
    }
}

extension UIColor {
    /// rgb颜色
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255.0 ,green: g/255.0 ,blue: b/255.0 ,alpha:1.0)
    }
    /// 纯色（用于灰色）
    convenience init(gray: CGFloat) {
        self.init(red: gray/255.0 ,green: gray/255.0 ,blue: gray/255.0 ,alpha:1.0)
    }
    /// 随机色
    class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
}

// 16进制 颜色
extension UIColor {
    
    class func colorWithHexString(_ hexValue: Int) -> UIColor {
        return UIColor(red: ((CGFloat)((hexValue & 0xFF0000) >> 16)) / 255.0,
                       
                       green: ((CGFloat)((hexValue & 0xFF00) >> 8)) / 255.0,
                       
                       blue: ((CGFloat)(hexValue & 0xFF)) / 255.0,
                       
                       alpha: 1.0)
    }
}

extension String {
    // MARK:- 获取字符串的CGSize
    func getSize(with fontSize: CGFloat) -> CGSize {
        let str = self as NSString
        
        let size = CGSize(width: UIScreen.main.bounds.width, height: CGFloat(MAXFLOAT))
        return str.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font : UIFont.systemFont(ofSize: fontSize)], context: nil).size
    }
}


extension UIView {
    
    /// 裁剪 view 的圆角
    func clipRectCorner(direction: UIRectCorner, cornerRadius: CGFloat) {
        let cornerSize = CGSize(width: cornerRadius, height: cornerRadius)
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: direction, cornerRadii: cornerSize)
        let maskLayer = CAShapeLayer()
        maskLayer.frame = bounds
        maskLayer.path = maskPath.cgPath
        layer.addSublayer(maskLayer)
        layer.mask = maskLayer
    }
    
    public var x: CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var r = self.frame
            r.origin.x = newValue
            self.frame = r
        }
    }
    
    public var y: CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var r = self.frame
            r.origin.y = newValue
            self.frame = r
        }
    }
    /// 右边界的x值
    public var rightX: CGFloat{
        get{
            return self.x + self.width
        }
        set{
            var r = self.frame
            r.origin.x = newValue - frame.size.width
            self.frame = r
        }
    }
    /// 下边界的y值
    public var bottomY: CGFloat{
        get{
            return self.y + self.height
        }
        set{
            var r = self.frame
            r.origin.y = newValue - frame.size.height
            self.frame = r
        }
    }
    
    public var centerX : CGFloat{
        get{
            return self.center.x
        }
        set{
            self.center = CGPoint(x: newValue, y: self.center.y)
        }
    }
    
    public var centerY : CGFloat{
        get{
            return self.center.y
        }
        set{
            self.center = CGPoint(x: self.center.x, y: newValue)
        }
    }
    
    public var width: CGFloat{
        get{
            return self.frame.size.width
        }
        set{
            var r = self.frame
            r.size.width = newValue
            self.frame = r
        }
    }
    public var height: CGFloat{
        get{
            return self.frame.size.height
        }
        set{
            var r = self.frame
            r.size.height = newValue
            self.frame = r
        }
    }
    
    
    public var origin: CGPoint{
        get{
            return self.frame.origin
        }
        set{
            self.x = newValue.x
            self.y = newValue.y
        }
    }
    
    public var size: CGSize{
        get{
            return self.frame.size
        }
        set{
            self.width = newValue.width
            self.height = newValue.height
        }
    }
    
}

//// 解决打印输出中文的数组问题
//extension NSMutableArray {
//
//    open override func description(withLocale: (Any)?) -> String{
//
//        var str = "(\n"
//
//        self.enumerateObjects({
//            str += "\t\($0.0), \n"
//        })
//
//        str += ")"
//
//        return str
//    }
//}
// 解决打印输出中文的字典问题
//extension NSMutableDictionary {
//    
//    open override func description(withLocale locale: Any?) -> String {
//        
//        var strM = "(\n"
//        
//        self.enumerateKeysAndObjects({
//            
//            strM += "\t\($0.0), \n"
//        })
//        
//        strM.append("}\n")
//        
//        return strM as String
//    }
//}

//extension UIImage {
//    
//    func UpdateImageWithTintColor(_ color: UIColor) -> UIImage {
//        
//        return UpdateImageWithTintColor(color, alpha: 1.0)
//    }
//    
//    func UpdateImageWithTintColor(_ color: UIColor,alpha: CGFloat) -> UIImage {
//        
//        let rect = CGRect(x: 0.0, y: 0.0, width: self.size.width , height: self.size.height)
//        
//        return UpdateImageWithTintColor(color, alpha: alpha, rect: rect)
//    }
//    
//    func UpdateImageWithTintColor(_ color: UIColor, rect: CGRect) -> UIImage {
//        
//        return UpdateImageWithTintColor(color, alpha: 1.0, rect: rect)
//    }
//    
//    func UpdateImageWithTintColor(_ color: UIColor, insets: UIEdgeInsets) -> UIImage {
//        
//        return UpdateImageWithTintColor(color, alpha: 1.0, insets: insets)
//    }
//    
//    func UpdateImageWithTintColor(_ color: UIColor, alpha: CGFloat, insets: UIEdgeInsets) -> UIImage {
//        
//        let originRect = CGRect(x: 0.0, y: 0.0, width: self.size.width, height: self.size.height)
//        
//        let tintImageRect = UIEdgeInsetsInsetRect(originRect, insets)
//        
//        return UpdateImageWithTintColor(color, alpha: alpha, rect: tintImageRect)
//    }
//
//     //全能初始化方法
//    func UpdateImageWithTintColor(_ color: UIColor, alpha: CGFloat, rect: CGRect) -> UIImage {
//       
//        let imageRect: CGRect = CGRect(x: 0.0, y: 0.0, width: self.size.width, height: self.size.width)
//         //启动图形上下文
//        UIGraphicsBeginImageContextWithOptions(imageRect.size, false, self.scale)
//         //获取图片上下文
//        let context = UIGraphicsGetCurrentContext()
//         //利用drawInRect方法绘制图片到layer, 是通过拉伸原有图片
//        self.draw(in: imageRect)
//         //设置图形上下文的填充颜色
//        CGContextSetRGBFillColor(context!, UIColor)
//        
//         //设置图形上下文的透明度
//        CGContextSetAlpha(context!, alpha);
//        
//         //设置混合模式
//        CGContextSetBlendMode(context, kCGBlendModeSourceAtop);
//        
//         //填充当前rect
//         CGContextFillRect(contextRef, rect);
//        
//         //根据位图上下文创建一个CGImage图片，并转换成UIImage
//        CGImageRef imageRef = CGBitmapContextCreateImage(context);
//         UIImage *tintedImage = [UIImage imageWithCGImage:imageRef scale:self.scale orientation:self.imageOrientation];
//        
//         let tintedImage = UIImage(cgImage: , scale: self.scale, orientation: self.imageOrientation)
//        
//         //释放 imageRef，否则内存泄漏
//         CGImageRelease(imageRef);
//         //从堆栈的顶部移除图形上下文
//        UIGraphicsEndImageContext()
//        
//        return tintImage
//        
// 
// 
//        
//    }
// 
//    
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
