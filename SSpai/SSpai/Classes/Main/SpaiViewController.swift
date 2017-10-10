//
//  SpaiViewController.swift
//  SSpai
//
//  Created by Michael 柏 on 2017/10/10.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

class SpaiViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
}
