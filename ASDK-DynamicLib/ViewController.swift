//
//  ViewController.swift
//  ASDK-DynamicLib
//
//  Created by Nicholas Velloff on 6/17/16.
//  Copyright © 2016 The Grid. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: ASViewController {
    
    let rootNode = RootNode()
    
    init() {
        super.init(node: rootNode)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

