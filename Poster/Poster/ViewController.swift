//
//  ViewController.swift
//  Poster
//
//  Created by YooHG on 7/13/20.
//  Copyright © 2020 Jell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    @IBOutlet var bountyLabel: UILabel!
    
    var gogo: String = "" {
        willSet(after) {
            print("willset: \(after)")
        }
        didSet(before) {
            print("didset: \(before)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gogo = "1"
        gogo = "2"
        bountyLabel.text = "₩ \(currentValue)"
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let alert: UIAlertController = UIAlertController.init(title: "경고", message: "눌렀구나", preferredStyle: .alert)
        alert.addAction(.init(title: "가즈아", style: .default, handler: { action in
            print(action.title!)
        }))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let message = "현상금은 \(currentValue) 입니다."
        
        let alert = UIAlertController(title: "hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        let randomNum = arc4random_uniform(100000) + 1
        currentValue = Int(randomNum)
        bountyLabel.text = "₩ \(currentValue)"
    }
    
}

