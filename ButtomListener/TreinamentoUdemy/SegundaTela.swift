//
//  SegundaTela.swift
//  TreinamentoUdemy
//
//  Created by Renato High on 06/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit
protocol EnviouDelegate {
    func mensagemEnviada(mensagem:String)
}

class SegundaTela: UIViewController, EnviouDelegate {
   
    var meuDelegate: EnviouDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    

    func mensagemEnviada(mensagem: String) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if meuDelegate != nil {
            meuDelegate?.mensagemEnviada(mensagem: "Segunda Tela")
        }
    }
}
