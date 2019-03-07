//
//  ViewController.swift
//  WebView
//
//  Created by Renato High on 06/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
        
        let url = URL(string: "https://www.google.com")!
        
        
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
       
    }


}

