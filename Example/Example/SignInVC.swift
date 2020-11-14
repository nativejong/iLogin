//
//  SignInVC.swift
//  Example
//
//  Created by John Blaine on 10/4/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit
import iLogin

class SignInVC: UIViewController {
    var login : iLogin?

    override func viewDidLoad() {
        super.viewDidLoad()

        login = iLogin(frame: CGRect.zero)
        self.view.addSubview(login!)
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
        
        login?.frame = CGRect(x: w * 0.1, y: h * 0.1, width: w * 0.8, height: h * 0.3)
    }

}
