//
//  ViewController.swift
//  Poster
//
//  Created by YooHG on 7/13/20.
//  Copyright © 2020 Jell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    }

    @IBAction func buttonClicked(_ sender: Any) {
        let alert: UIAlertController = UIAlertController.init(title: "경고", message: "눌렀구나", preferredStyle: .alert)
        alert.addAction(.init(title: "가즈아", style: .default, handler: { action in
            print(action.title!)
        }))
        present(alert, animated: true, completion: nil)
    }
}

