//
//  SpaiViewController.swift
//  Spai
//
//  Created by heather on 2017/9/29.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

class SpaiViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
