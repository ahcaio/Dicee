//
//  ViewController.swift
//  Dicee
//
//  Created by Caio Cesar Alves de Limeira on 7/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    //Criar o array que armazena as imagens dos dado
    let dados = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //Sortear um número do dado
        //Exibir o dado sorteado
        diceImageView1.image = dados[Int.random(in: 0..<dados.count)]
        diceImageView2.image = dados[Int.random(in: 0..<dados.count)]
    }
    
    // função que detecta quando o celular é "agitado" e rola os dados
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            diceImageView1.image = dados[Int.random(in: 0..<dados.count)]
            diceImageView2.image = dados[Int.random(in: 0..<dados.count)]
        }
    }
}
