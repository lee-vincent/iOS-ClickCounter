//
//  ViewController.swift
//  ClickCounter
//
//  Created by Vincent Lee on 2/2/17.
//  Copyright © 2017 Vincent Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    var total: Int = 0;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func IncrementTotal(_ sender: Any) {
        total += 1;
        counterLabel.text = String(total);
    }
    
    
    @IBAction func ToNextScreen(_ sender: Any) {
        //execute segue programmatically
        performSegue(withIdentifier: "toSecondScreen", sender: nil)    }

}

