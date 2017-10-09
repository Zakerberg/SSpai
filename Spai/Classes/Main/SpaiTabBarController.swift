//
//  SpaiTabBarController.swift
//  Spai
//
//  Created by heather on 2017/9/29.
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
    
    // MARK: - 设置
    func setupTabbar() {
        
        self.tabBar.isTranslucent = false
        let homePage = SpaiHomePageController()
        self.AddChildViewController(controller: homePage, image: UIImage.init(named: "home_26x23_")!, SelsectedImage: UIImage.init(named: "home_pressed_26x23_")!)
        
        let foundPage = SpaiFoundController()
        self.AddChildViewController(controller: foundPage, image: UIImage.init(named: "discover_18x24_")!, SelsectedImage: UIImage.init(named: "discover_pressed_18x24_")!)
        
        let messagePage = SpaiMessageController()
        self.AddChildViewController(controller: messagePage, image: UIImage.init(named: "notification_20x24_")!, SelsectedImage: UIImage.init(named: "notification_pressed_20x24_")!)
        
        let loginPage = SpaiMineController()
        self.AddChildViewController(controller: loginPage, image: UIImage.init(named: "user_20x24_")!, SelsectedImage: UIImage.init(named: "user_pressed_20x24_")!)
    }
    
    // MARK: - 设置
    func AddChildViewController(controller: UIViewController, image: UIImage, SelsectedImage: UIImage) {

        let nav = SpaiNavController(rootViewController: controller)
        nav.tabBarItem.image = image
        nav.tabBarItem.selectedImage = SelsectedImage
        nav.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 0, -5, 0)
        
        self.addChildViewController(nav)
    }
}

