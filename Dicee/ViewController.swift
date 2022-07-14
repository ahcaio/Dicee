//
//  ViewController.swift
//  Dicee
//
//  Created by Caio Cesar Alves de Limeira on 7/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Criar o array que armazena as imagens dos dado
    let dados = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"),UIImage(named: "DiceFour"), UIImage(named: "DiceFour"),UIImage(named: "DiceFive"), UIImage(named: "DiceSix")]
    


    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = UIImage(named: "DiceOne") // altera a imagem da ImageView
        diceImageView2.image = UIImage(named: "DiceOne")

    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //Sortear um número do dado
        let randomDice1 = Int.random(in: 0..<dados.count)
        let randomDice2 = Int.random(in: 0..<dados.count)
        
        //Exibir o dado sorteado
        diceImageView1.image = dados[randomDice1]
        diceImageView2.image = dados[randomDice2]

    }
}
