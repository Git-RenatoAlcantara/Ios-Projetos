//
//  ViewController.swift
//  TaskManager
//
//  Created by Renato High on 10/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textNameField: UITextField!
    
    var tasks = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func addTask() {
        if textNameField.text == "" {
            return
        }
        tasks.append(textNameField.text!)
        textNameField.resignFirstResponder()
        tableView.reloadData()
        print(tasks)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        configureCell(cell: cell, atIndexPath: indexPath as NSIndexPath)
        
        return cell
        
    }
    
    func configureCell(cell: UITableViewCell, atIndexPath indexPath: NSIndexPath){
        let task = tasks[indexPath.row]
        cell.textLabel?.text = task
    }
    
}

