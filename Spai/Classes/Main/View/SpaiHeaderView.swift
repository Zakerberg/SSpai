//
//  SpaiHeaderView.swift
//  Spai
//
//  Created by heather on 2017/9/29.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit
import SnapKit

protocol SpaiHeaderViewDelegate: NSObjectProtocol {
    
    func Btnclick()
}

class SpaiHeaderView: UIView {
    
    var titleLabel = UILabel()
    var button = UIButton()
    
    weak var delegate: SpaiHeaderViewDelegate?
    
    //button参数可为空的初始化方法
    func initWithTitle(title: NSString, button: NSString) -> Self {
        
        self.frame = CGRect(x: 0, y: 0, width:SCREENW , height: 100)
        self.backgroundColor = UIColor.white
        self.titleLabel.text = title as String!
        
        //   若button参数不为空，则为带按钮的类型，进行初始化。否则不初始化按钮
        if button.boolValue {
            self.button.setImage(UIImage.init(named: button as String), for: .normal)
        }
        return self
    }
    
    //scrollview的offset Y值变化时，视图作相应变化
    func viewScrolledByY(Y: Float)  {
        // scrollview刚刚开始滑动，此时导航标题大小和按钮大小进行变化
        if Y <= (-97) && Y > (-130) {
            
            // 以字号为36和20计算得出的临界Y值为-97和-130，根据此刻Y值计算此时的字号
            let fontSize: CGFloat = CGFloat((-((16.0 * Y) / 33.0)) - 892.0/33.0)
            self.titleLabel.font = UIFont.init(name: "HelveticaNeue-Bold", size: fontSize)
            
            // 更新titlelabel的高度约束
            self.titleLabel.snp.makeConstraints({ (make) in
                make.height.equalTo(self.titleLabel.font.pointSize + 0.5)
            })
            
            //  计算此刻button的对应尺寸，若大于最小值（16），则更新约束
            let buttonSize:CGFloat = self.titleLabel.font.pointSize * (5.0/9.0)
            if buttonSize >= 16.0 {
                
                self.button.snp.makeConstraints({ (make) in
                    make.width.equalTo(buttonSize)
                    make.height.equalTo(buttonSize)
                })
            }
        }
    }
    //为messageView作特殊处理时调用
    func messageViewScrollBySmallY(Y: Float)  {
        
        self.titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 36.0)
        self.titleLabel.snp.makeConstraints { (make) in
            make.height.equalTo(36.0)
        }
        
        self.button.snp.updateConstraints { (make) in
            make.height.equalTo(20.0)
            make.width.equalTo(20.0)
        }
    }
    
    @objc private func buttonClicked(){

      //  if self.delegate?.responds(to: #selector(Btnclick())) {
            self.delegate?.Btnclick()
     //   }
    }

    //MARK: - 导航标题Label的懒加载
    private lazy var label: UILabel = {
        
        let title = UILabel()
        title.textColor = UIColor.black
        title.font = UIFont(name: "HelveticaNeue-Bold", size: 36.0)
        title.textAlignment = .left
        self.addSubview(title)
        
        title.snp.makeConstraints({ (make) in
            make.left.equalTo(self.snp.bottom).offset(25)
            make.bottom.equalTo(self.snp.bottom).offset(-10)
            make.height.equalTo(36)
            make.width.equalTo(120)
        })
        
        self.titleLabel = title
        return title
    }()

    //MARK: - 导航按钮的懒加载
    private lazy var btn: UIButton = {
        
        let btn = UIButton()
        btn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        self.addSubview(btn)
        btn.snp.makeConstraints({ (make) in
            make.right.equalTo(self.snp.right).offset(-25)
            make.bottom.equalTo(self.snp.bottom).offset(-15)
            make.width.equalTo(20)
            make.height.equalTo(20)
        })
        self.button = btn
        return btn
    }()
}
