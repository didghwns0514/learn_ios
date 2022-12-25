//
//  ViewController.swift
//  dice-game
//
//  Created by 양호준 on 2022/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    
    var diceList: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonRollDice(_ sender: UIButton) {
        //image들 랜덤 변경
        firstImage.image = diceList[Int.random(in: 0...5)]
        secondImage.image = diceList[Int.random(in: 0...5)]
        
        firstImage.image = diceList.randomElement() // 이걸로 해도 됨!
    }
}

