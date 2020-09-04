//
//  common.swift
//  DouYuCopySwift
//
//  Created by yckj on 2020/9/4.
//  Copyright © 2020 zxx. All rights reserved.
//

import UIKit

//  是否刘海屏
var isFringe: Bool {
    if #available(iOS 11, *) {
          guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
              return false
          }
          
          if unwrapedWindow.safeAreaInsets.left > 0 || unwrapedWindow.safeAreaInsets.bottom > 0 {
              return true
          }
    }
    return false
}
/// 状态栏高度
var mStatusBarH: CGFloat {
    if #available(iOS 13.0, *) {
        guard let statusbar = UIApplication.shared.windows.first?.windowScene?.statusBarManager else {
            return 0
        }
        return statusbar.statusBarFrame.size.height
    } else {
        return UIApplication.shared.statusBarFrame.size.height
    }
}
let kNavigationBarH: CGFloat = 44
let kTopHeight: CGFloat = kNavigationBarH + mStatusBarH
let kTabbarH: CGFloat = UIApplication.shared.statusBarFrame.size.height > 20.0 ? 83.0 : 49.0

let kScreenBounds = UIScreen.main.bounds
let kScreenW = UIScreen.main.bounds.width
let kScreenH = UIScreen.main.bounds.height
