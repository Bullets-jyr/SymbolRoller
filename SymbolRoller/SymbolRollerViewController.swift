//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by bullets on 2022/12/02.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO:
        // - 심볼에서 하나를 임으로 추출해서,
        // - 이미지와 텍스트 설정을 한다
        // DRY
        // Do not Repeat Yourself
        reload()
        print("view did load...")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear...")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear...")
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
    
    // 버튼 이벤트
    @IBAction func buttonTapped(_ sender: Any) {
        print("buton tapped...")
        reload()
    }
}
