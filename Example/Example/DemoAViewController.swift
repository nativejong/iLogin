//
//  DemoAViewController.swift
//  Example
//
//  Created by John Blaine on 12/29/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit
import iLogin

class DemoAViewController: UIViewController {
    var login : iLogin?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.edgesForExtendedLayout = []
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        login = iLogin(frame: CGRect.zero)
        self.view.addSubview(login!)
        
        self.view.backgroundColor = UIColor.white
    }
    
    func watchAction() {
        login?.watchAction(1, login: { (email : String?, pwd : String?, toast : ((String?) -> Void)?) in
            toast?("ok")
        }, createAccount: { ( name : String?, email : String?, pwd : String?, toast : ((String?) -> Void)?) in
            toast?("ok")
        }, changePwd: { ( email : String?, pwd : String?, toast : ((String?) -> Void)?) in
            toast?("ok")
        })
    }

    
    override func viewWillLayoutSubviews() {
        let w = self.view.frame.size.width;
        let h = self.view.frame.size.height;
        login?.frame = CGRect(x: w * 0.1, y: h * 0.1, width: w * 0.8, height: h * 0.4)
    }

}

