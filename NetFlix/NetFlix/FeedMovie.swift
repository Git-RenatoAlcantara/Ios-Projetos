//
//  FeedMovie.swift
//  NetFlix
//
//  Created by Renato High on 08/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import Foundation

struct Movie {
    var id: Int
    var imgUrl: String
    var title: String?
    var description: String?
}

class FeedMovieCell {
    
    let highlight = Movie(id: 1, imgUrl: "", title: nil, description: nil)
    let movie: [String : [Movie]] = [
    
        "continue": [
            Movie(id: 1, imgUrl: "323232", title: "text1", description: "desc1"),
            Movie(id: 2, imgUrl: "434343", title: "text2", description: "desc2")
        ],
        "recent": [
            Movie(id: 3, imgUrl: "323232", title: "text3", description: "desc3"),
            Movie(id: 4, imgUrl: "434343", title: "text4", description: "desc4")
        ]
    ]
    
    
}
