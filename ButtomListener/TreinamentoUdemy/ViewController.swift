//
//  ViewController.swift
//  TreinamentoUdemy
//
//  Created by Renato High on 06/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit



class ViewController: UIViewController, EnviouDelegate {
   
    
    
    var meuBotao:UIButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .yellow
        
        meuBotao.frame = CGRect(x: view.frame.width / 2, y: 200, width: 100, height: 50)
        meuBotao.setTitle("Buttom", for: UIControl.State.normal)
        meuBotao.addTarget(self, action: #selector(cliqueButtom(sender:)), for: UIControl.Event.touchUpInside)
        meuBotao.backgroundColor = .green
        
        self.view.addSubview(meuBotao)
      
    }
    
    @objc func cliqueButtom(sender:UIButton){
        print("Clicou no Botao")
    }
    func mensagemEnviada(mensagem: String) {
        print("Disparou tela 1 \(mensagem)")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "FirstToSecond", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let minhaVC:SegundaTela = segue.destination as! SegundaTela
        minhaVC.meuDelegate = self
    }
}

