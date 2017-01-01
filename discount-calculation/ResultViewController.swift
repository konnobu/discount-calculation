//
//  ResultViewController.swift
//  discount-calculation
//
//  Created by 今野遼太 on 2017/01/01.
//  Copyright © 2017年 nobu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var price: Int = 0
    var percent: Int = 0
    
    @IBOutlet weak var resultField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let percentValue = Float(percent) / 100
        let discountPrice = Float(price) * percentValue
        let percentOffPrice = price - Int(discountPrice)
        resultField.text = "\(percentOffPrice)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
