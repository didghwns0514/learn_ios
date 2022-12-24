//
//  ViewController.swift
//  Project1
//
//  Created by 양호준 on 2022/12/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainButton: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    


    @IBAction func buttonPress(_ sender: UIButton) {
        mainLabel.text = "Hello my friend"
        mainLabel.backgroundColor = UIColor.yellow
        mainLabel.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        mainLabel.textColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        mainLabel.textAlignment = NSTextAlignment.right
    }
    


}

