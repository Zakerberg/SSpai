//
//  SpaiClassedController.swift
//  Spai
//
//  Created by heather on 2017/9/30.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//  分类专题页面

import UIKit

class SpaiClassedController: SpaiSubController {

    var datas = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private lazy var data: NSArray = {
        
        if !(self.datas.contains((Any).self)) {
            
            let datas = ["效率工具", "手机摄影", "新玩意", "生活方式", "游戏", "人物"]
            self.datas = datas as NSArray
        }
        
        return datas
    }()
    
    //MARK: - setUI
    func setUI() {
    
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self as Any? as? UIGestureRecognizerDelegate
        self.view.backgroundColor = UIColor.white
        self.setListBtnWithArr(datas: self.datas)
        let back: UIButton = UIButton()
        self.view.addSubview(back)
        back.setImage(UIImage.init(named: "back_dark_10x16_"), for: .normal)
        
        back.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left).offset(15)
            make.top.equalTo(self.view.snp.top).offset(30)
            make.width.equalTo(20)
            make.height.equalTo(32)
        }
        
        back.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        
        let matrix: UIButton = UIButton(frame: CGRect(x: SCREENW/2 - 50, y: 480, width: 100, height: 30))
        self.view.addSubview(matrix)
        matrix.setImage(UIImage.init(named: "Matrix_icon_33x26_"), for: .normal)
        
        
        
    }
    
    func setListBtnWithArr(datas: NSArray) {
     
    }
    
    //MARK: - btnClick
    @objc private func goBack() {

    }
}
/*

 [matrix setImage:[UIImage imageNamed:@"Matrix_icon_33x26_"] forState:UIControlStateNormal];
 [matrix setTitle:@"   Matrix" forState:UIControlStateNormal];
 [matrix setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
 matrix.titleLabel.font = [UIFont systemFontOfSize:18.0];
 matrix.tag = 6;
 [matrix addTarget:self action:@selector(pushToClass:) forControlEvents:UIControlEventTouchUpInside];
 }
 
 
 */
/*
- (void)setListBtnWithArr:(NSArray *)datas
{
    int i = 0;
    for(NSString *title in datas)
    {
        UIButton *button = [[UIButton alloc] init];
        [button setTitle:title forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:0.2] forState:UIControlStateSelected];
        button.titleLabel.font = [UIFont systemFontOfSize:18.0];
        button.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:button];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).with.offset(130);
        make.right.mas_equalTo(self.view.mas_right).with.offset(-130);
        make.height.mas_equalTo(18.0);
        make.top.mas_equalTo(self.view.mas_top).with.offset(150 + i *50);
        }];
        button.tag = i;
        [button addTarget:self action:@selector(pushToClass:) forControlEvents:UIControlEventTouchUpInside];
        i++;
    }
}


*/

