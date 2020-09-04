//
//  MainViewController.swift
//  DouYuCopySwift
//
//  Created by yckj on 2020/9/3.
//  Copyright © 2020 zxx. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//
        addChildVC("Home")
        addChildVC("Live")
        addChildVC("Follow")
        addChildVC("profile")
        
        
        // 通storyboard 获取控制器
        
        // 将 childVC作为子控制器
        
        // Do any additional setup after loading the view.
    }
    
    fileprivate func addChildVC(_ storyName : String)
    {
        let childVC = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChild(childVC)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
