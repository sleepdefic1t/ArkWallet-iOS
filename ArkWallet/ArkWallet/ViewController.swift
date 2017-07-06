//
//  ViewController.swift
//  ArkWallet
//
//  Created by simon on 7/5/17.
//  Copyright © 2017 sleepdefic1t. All rights reserved.
//

import UIKit
import ARKKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    public var arkView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupArkView()
        loadArkView()
    }
    
    func setupArkView() {
        
        let webConfig = WKWebViewConfiguration()
        
        arkView = WKWebView(frame: self.view.frame, configuration: webConfig)
        arkView.uiDelegate = self

        self.view.addSubview(arkView)
        
    }
    
    func loadArkView() {
        
        if let ark = ARKKit.Files.HTML.index,
            case let req = URLRequest(url: ark) {
            
            arkView.load(req)
            
        } else { Swift.print("index.html could not be found") }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        arkView.reload()
    }


}

