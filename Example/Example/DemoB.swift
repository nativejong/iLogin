//
//  DemoB.swift
//  Example
//
//  Created by John Blaine on 12/29/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit

class DemoB: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let c = UIColor(red: 120/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.6 )
        self.navigationBar.barTintColor = c
        self.navigationBar.isTranslucent = true
        let vc = LogInVC()
//        let vc = DemoBViewController()
        self.pushViewController(vc, animated: false)
    }
    
}
