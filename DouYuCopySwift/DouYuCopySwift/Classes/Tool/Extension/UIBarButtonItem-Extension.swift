//
//  UIBarButtonItem-Extension.swift
//  DouYuCopySwift
//
//  Created by yckj on 2020/9/4.
//  Copyright © 2020 zxx. All rights reserved.
//

import UIKit

extension UIBarButtonItem
{
    
    // 类方法
//    class func createItem(imageName : String, highImageName : String, size : CGSize) -> UIBarButtonItem {
//        let  btn = UIButton()
//        btn.setImage(UIImage(named: imageName), for: .normal)
//        btn.setImage(UIImage(named: highImageName), for: .highlighted)
//        btn.frame = CGRect(origin: CGPoint.zero, size: size)
//        return UIBarButtonItem(customView: btn)
//
//    }
    
    
    
// 构造函数
    // 便利 构造函数   2. 在构造函数中 必须明确调用一个设计的构造函数 （self）
// 构造函数中 如果有的值不想传值 那么就可以用默认值
    
    convenience init(imageName : String , highImageName : String = "", size : CGSize = CGSize.zero) {
        let btn  = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        
        if size != CGSize.zero {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        else
        {
            btn.sizeToFit()
        }
        
        self.init(customView : btn)
    }
    
}
