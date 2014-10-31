//
//  ViewController.swift
//  FAExtensions
//
//  Created by xcstream on 10/30/14.
//  Copyright (c) 2014 xcstream. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var v = UIView()
        v.frame = CGRectMake(100,70,100,100)
        view.addSubview(v)
        v.backgroundColor = UIColor.blackColor()
        v.onClick({()->Void in
            println("view1 clicked")
        })
        var v2 = UIView()
        v2.frame = CGRectMake(100,200,100,100)
        view.addSubview(v2)
        v2.backgroundColor = UIColor.greenColor()
        v2.onClick({()->Void in
            println("view2 clicked")
        })

        var v3 = UIView()
        
        
    }
}


