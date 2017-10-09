//
//  SpaiTabBarController.swift
//  SSpai
//
//  Created by Michael 柏 on 2017/10/9.
//  Copyright © 2017年 Michael 柏. All rights reserved.
//

import UIKit

class SpaiTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabbar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupTabbar() {
        
    }
    
    // MARK: - 设置
    func AddChildViewController(controller: UIViewController, image: UIImage, SelectedImage: UIImage) {
        
        let nav = SpaiNavController(rootViewController: controller)
        nav.tabBarItem.image = image
        nav.tabBarItem.selectedImage = SelectedImage
        nav.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0)
        
        self.addChildViewController(nav)
    }
}
