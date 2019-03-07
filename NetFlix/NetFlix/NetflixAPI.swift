//
//  NetflixAPI.swift
//  NetFlix
//
//  Created by Renato High on 08/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

protocol FeedMovieDelagate {
    func response(status: Int, feed: FeedMovie)
}

class NetflixAPI: NSObject {
    static let shared = NetflixAPI()
    var delegate: FeedMovieDelagate!
    
    
    
    func request() {
        let delay = DispatchTime.now() + .seconds(3)
        DispatchQueue.main.asyncAfter(deadline: delay) {
            self.delegate.response(status: 200, feed: FeedMovie())
        }
    }
}
