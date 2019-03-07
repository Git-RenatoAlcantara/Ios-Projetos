//
//  ViewController.swift
//  Parsin JSON
//
//  Created by Renato High on 05/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

struct Course {
    
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
    
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
      
        guard let url = URL(string: jsonUrlString) else
        { return }
        
        URLSession.shared.dataTask(with: url){ (data, response, err) in
            
            //perhaps check err
            //also perhaps check response status 200 ok
            
            guard let data = data else {return}
            
//            let dataAsString = String(data: data,
//                                      encoding: .utf8)
//            print(dataAsString)
            
            do {
                
                let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                
                
            } catch let jsonErr{
                
                print("Error serializing json: ", jsonErr)
                
            }
         
        }.resume()
        
       /* let myCourse = Course(id: 1, name: "my couser", link: "some link", imageUrl: "some image url")
        
        print(myCourse) */
    }


}

