//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by Whyeon on 2022/03/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quoutes = [
        Quoute(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
        Quoute(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "비용"),
        Quoute(contents: "편견이란 실효성이 없는 의견이다.", name: "암브로스 빌"),
        Quoute(contents: "분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인"),
        Quoute(contents: "내 죽음을 적에게 알리지 말라.", name: "이순신")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btn_generator(_ sender: Any) {
        let random: Int = Int(arc4random_uniform(5)) // 0~4 사이의 난수를 생성
        let quoute = quoutes[random]
        self.quoteLabel.text = quoute.contents
        self.nameLabel.text = quoute.name        
    }
}

