//
//  ARKKit.swift
//  ARKKit
//
//  Created by simon on 7/5/17.
//  Copyright © 2017 sleepdefic1t. All rights reserved.
//

import UIKit
import WebKit

public struct ARKKit {

    public struct Files {
        
        static public var ARKBundle: Bundle? { return Bundle(identifier: "io.sleepdeficit.ARKKit") }
        
        public struct HTML {
            
            static public var dist: String? { return ARKBundle?.resourcePath?.appending("/src/ark-lite-wallet/app/") }
            static public var index: URL? { return URL(fileURLWithPath: (HTML.dist?.appending("index.html"))!) }
            
        }
        
    }
    
    
}
