//
//  ViewController.swift
//  webview
//
//  Created by vinayaka s yattinahalli on 11/05/20.
//  Copyright © 2020 vinayaka s yattinahalli. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webview = WKWebView()
        webview.frame  = CGRect(x: 40, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-40)
        view.addSubview(webview)
        
        let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: nil)!
        webview.loadFileURL(url, allowingReadAccessTo: url)
        let request = URLRequest(url: url)
        webview.load(request)
        
    }
}

