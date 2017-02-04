//
//  SecondViewController.swift
//  ClickCounter
//
//  Created by Vincent Lee on 2/3/17.
//  Copyright © 2017 Vincent Lee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var label: UILabel!;
    var mycount = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        let label = UILabel();
        label.frame = CGRect.init(x:150, y:150, width:60, height:60);
        label.text = "0";
        self.view.addSubview(label);
        self.label = label;
        
        let button = UIButton();
        button.frame = CGRect.init(x:150, y:250, width:60, height:60);
        button.setTitle("Click", for: .normal);
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(SecondViewController.incrementCount), for: UIControlEvents.touchUpInside)

    }

    
    func incrementCount() {
        self.mycount += 1;
        self.label.text = "\(self.mycount)";
    }

}
