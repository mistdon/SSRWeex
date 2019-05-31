//
//  ViewController.swift
//  SSRWeexDemo
//
//  Created by shendong on 2019/5/31.
//  Copyright © 2019 shendong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 44))
        button.backgroundColor = .red
        button.setTitle("Push to Weex", for: .normal)
        button.addTarget(self, action: #selector(tapAction(_:)), for: .touchUpInside)
        view.addSubview(button)
        
    }
    @objc func tapAction(_ sender: UIButton){
        
    }

}

