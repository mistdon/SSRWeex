//
//  WeexViewController.swift
//  SSRWeexDemo
//
//  Created by shendong on 2019/5/31.
//  Copyright © 2019 shendong. All rights reserved.
//

import UIKit
import WeexSDK

class WeexViewController: UIViewController {
    
    var instance = WXSDKInstance()
    var weexView = UIView()
    var url : URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        instance.viewController = self
        instance.frame = self.view.frame
        instance.onCreate = {(weexView: UIView?) in
            guard let weexview = weexView else { return }
            self.weexView.removeFromSuperview()
            self.weexView = weexview
            self.view.addSubview(weexview)
        }
        instance.onFailed = {(error: Error?) in
            print(error)
        }
        instance.renderFinish = {(view: UIView?) in
            print(view)
        }
        
        let url = Bundle.main.url(forResource: "main", withExtension: "js")
        instance.render(with: url, options: ["bundleUrl": self.url?.absoluteString], data: nil)
    }
    deinit {
        instance.destroy()
    }
}
