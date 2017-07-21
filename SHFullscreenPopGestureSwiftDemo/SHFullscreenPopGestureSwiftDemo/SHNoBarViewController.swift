//
//  SHNoBarViewController.swift
//  SHFullscreenPopGestureSwiftDemo
//
//  Created by qjsios on 2017/7/20.
//  Copyright © 2017年 ShowHandAce. All rights reserved.
//

import UIKit

class SHNoBarViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.sh_prefersNavigationBarHidden = true
        
        self.sh_interactivePopMaxAllowedInitialDistanceToLeftEdge = 200
    }
    
    @IBAction func pushButtonTouched(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(SHAceViewController(), animated: true)
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
