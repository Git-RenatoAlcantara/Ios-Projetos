//
//  ViewController.swift
//  NetFlix
//
//  Created by Renato High on 07/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class FeedMovieViewController: UITableViewController {
    
    let cellId = "cellId"
    var feedMovie: FeedMovie?
    
    
    let progressView: UIActivityIndicatorView = {
        let p = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.whiteLarge)
        p.backgroundColor = .black
        p.translatesAutoresizingMaskIntoConstraints = false
        p.startAnimating()
        return p
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViews()
        setupIndicatorView()
        
        
        let api = NetflixAPI.shared
        api.delegate = self
        api.request()
    }
    
    private func setViews(){
        tableView.register(FeedMovieCell, forCellReuseIdentifier: cellId)
    }
    
    private func setupIndicatorView(){
        guard let window = UIApplication.shared.keyWindow else {return}
        window.addSubview(progressView)
        window.bringSubviewToFront(progressView)
        window.constraint(pattern: "H:|[v0]|", views: progressView)
        window.constraint(pattern: "V:|[v0]|", views: progressView)
        
    }

  
}
extension FeedMovieViewController: FeedMovieDelagate {
    func response(status: Int, feed: FeedMovie) {
        progressView.removeFromSuperview()
        if status == 200 {
            self.feedMovie = feed
        }
    }
    
    
}

extension FeedMovieViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as! FeedMovie
            
            cell.textLabel?.text = String(indexPath.row)
            
            cell.backgroundColor = .brown
            return cell
    }
}

