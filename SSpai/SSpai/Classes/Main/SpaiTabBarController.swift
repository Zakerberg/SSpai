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
        
        self.tabBar.isTranslucent = false
        let homePage = SpaiHomeController()
        self.AddChildViewController(controller: homePage, image: UIImage.init(named: "home_26x23_")!, SelectedImage: UIImage.init(named: "home_pressed_26x23_")!)
        
        let foundPage = SpaiFoundController()
        self.AddChildViewController(controller: foundPage, image: UIImage.init(named: "discover_18x24_")!, SelectedImage: UIImage.init(named: "discover_pressed_18x24_")!)
        
        let messagePage = SpaiMessageController()
        self.AddChildViewController(controller: messagePage, image: UIImage.init(named: "notification_20x24_")!, SelectedImage: UIImage.init(named: "notification_pressed_20x24_")!)
        
        let loginPage = SpaiMineController()
        self.AddChildViewController(controller: loginPage, image: UIImage.init(named: "user_20x24_")!, SelectedImage: UIImage.init(named: "user_pressed_20x24_")!)
        
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
