//
//  ViewController.swift
//  SHFullscreenPopGestureSwiftDemo
//
//  Created by qjsios on 2017/7/20.
//  Copyright © 2017年 ShowHandAce. All rights reserved.
//

import UIKit

private let CellID = "cell"

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: CellID)
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellID)
        cell?.textLabel?.text = dataSource[indexPath.row]
        cell?.textLabel?.font = UIFont.systemFont(ofSize: 14)
        cell?.accessoryType = .disclosureIndicator
        return cell!
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(SHAceViewController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(SHNoBarViewController(), animated: true)
        case 2:
            self.navigationController?.pushViewController(SHScrollViewController(), animated: true)
        case 3:
            self.navigationController?.pushViewController(SHNoGestureViewController(), animated: true)
        default: break
        }
    }
    
    
    // MARK: - 数据
    private let dataSource = [
        "0.Push a view controller with bar",
        "1.Push a view controller without bar",
        "2.Push a view controller with scrollView",
        "3.Push a view controller without pop gesture"
    ]
    
    // MARK: -
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

