//
//  ViewController.swift
//  Dicee
//
//  Created by Caio Cesar Alves de Limeira on 7/14/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = UIImage(named: "DiceSix") // altera a imagem da ImageView
        diceImageView2.image = UIImage(named: "DiceThree")

    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("O botão foi pressionado")
    }
}
