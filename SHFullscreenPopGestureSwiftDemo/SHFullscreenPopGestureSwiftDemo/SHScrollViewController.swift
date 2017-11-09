//
//  SHScrollViewController.swift
//  SHFullscreenPopGestureSwiftDemo
//
//  Created by qjsios on 2017/7/21.
//  Copyright © 2017年 ShowHandAce. All rights reserved.
//

import UIKit

class SHScrollViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Scroll"
        
        //设置 sh_scrollViewPopGestureRecognizerEnable 属性为 true 可以让 scrollView 的控制器具有左滑返回手势
        self.scrollView.sh_scrollViewPopGestureRecognizerEnable = true
        
        self.imgView.image = UIImage(named: "ACE")?.resizableImage(withCapInsets: .zero, resizingMode: .tile)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
