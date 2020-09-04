//
//  PageTitleView.swift
//  DouYuCopySwift
//
//  Created by yckj on 2020/9/4.
//  Copyright © 2020 zxx. All rights reserved.
//

import UIKit

private let kScrollLineH : CGFloat = 2
private let kNormalColor : (CGFloat , CGFloat , CGFloat) = (85, 85 ,85)
private let kSelectColor :(CGFloat , CGFloat , CGFloat) = (255, 128 , 0)

class PageTitleView: UIView {
    
    // 定义属性
    private var titles : [String]
    
    // 懒加载属性
    private lazy var scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false // 反之超出范围以外、
        return scrollView
    }()// 闭包类型
    
    

    // Mark  - 自定义构造函数  -----  必须创建 init with coder
    init(frame: CGRect , titles : [String]) {
        self.titles = titles
        super.init(frame: frame)
        // 设置UI 界面
        setUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}


// 设置 UI 界面
extension PageTitleView {
    private func setUI() {
        //添加 uiscrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        // 2. 添加 title对应的 label
        setUpTitles()
        
        // 3. 设置 底线和滚动的滑块
        setUpBottomTitltLabelsLiones()
    }
    
    // 设置label
    private func setUpTitles() {
        // 0 抽出label 的共通属性 就不需要每次循环的时候 去创建了
        
        let labelW : CGFloat = frame.width / CGFloat(titles.count)
        let labelH : CGFloat = frame.height - kScrollLineH
        let labelY : CGFloat = 0
        
        for (index,title) in titles.enumerated() {
            // 1.循环创建label
            let label = UILabel()
            // 2. 设置 uiLabel的属性
            label.text = title
            label.tag = index
            label.font = UIFont.systemFont(ofSize: 16.0)
            label.textAlignment = .center
            
            // 3. 设置label的的属性
            let labelX : CGFloat = labelW * CGFloat(index)
            label.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            
            
            // 4. Label 添加到 scrollView中
            scrollView.addSubview(label)
            
            
        }
        
        
    }
    
    
    private func setUpBottomTitltLabelsLiones() {
        // 添加底线
        let  bottomLine = UIView()
        bottomLine.backgroundColor = UIColor.lightGray
        let lineH : CGFloat = 0.5
        bottomLine.frame = CGRect(x: 0, y: frame.height - lineH, width: frame.width, height: lineH)
        addSubview(bottomLine)// 添加到当前的view中
        
    }
    
    
    
}
