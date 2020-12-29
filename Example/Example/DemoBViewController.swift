//
//  DemoBViewController.swift
//  Example
//
//  Created by John Blaine on 12/29/20.
//  Copyright © 2020 John Blaine. All rights reserved.
//

import UIKit

class DemoBViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.edgesForExtendedLayout = []
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    

    override func viewWillLayoutSubviews() {
        let w = self.view.frame.size.width;
        let h = self.view.frame.size.height;
    }

}

