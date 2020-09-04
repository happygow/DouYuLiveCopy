//
//  HomeVC.swift
//  DouYuCopySwift
//
//  Created by yckj on 2020/9/4.
//  Copyright © 2020 zxx. All rights reserved.
//

import UIKit

private let kTitleViewH : CGFloat = 40

class HomeVC: UIViewController {
    
    /// 懒加载属性
    fileprivate lazy var pageTitleView : PageTitleView = {[weak self] in
        let titleFrame = CGRect(x: 0, y: kTopHeight, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)

        return titleView
        
    }()
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 设置UI 界面
        setUI()
    }
    



}

//#pragma mark -------------设置Ui界面  ----------------------------
extension HomeVC {
    
    private func  setUI() {
        // 设置导航栏
        setNavigationBar()
        
        // 0 不需要调整 UIscrollView的内边距
        
        
        // 1.  添加 titleView
 
        view .addSubview(pageTitleView)
        
    }
    
    private func setNavigationBar() {
        // 左侧的logo
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        
        
        // 设置有的button
        // 调整 button的 间距
        let size = CGSize(width: 40, height: 40)
        
        let  historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        
        let qrCodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrCodeItem]
        
        
        
        
    
        
        
        
        
        
        
        
        
    }
    
}
