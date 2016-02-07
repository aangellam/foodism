//
//  KSTokenView_viewcontroller.swift
//  Foodism
//
//  Created by Bilan DeDonato on 2/7/16.
//  Copyright © 2016 hackatbrown. All rights reserved.
//

import UIKit

class KSTokenView_viewcontroller: UIViewController {
    
    @IBOutlet var tokenView: KSTokenView!
    
    let names: Array<String> = List.names()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tokenView.delegate = self
        tokenView.promptText = " "
        tokenView.placeholder = "What's in your Fridge?"
        tokenView.descriptionText = "Languages"
        tokenView.maxTokenLimit = -1
        tokenView.style = .Squared
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension KSTokenView_viewcontroller: KSTokenViewDelegate {
    func tokenView(token: KSTokenView, performSearchWithString string: String, completion: ((results: Array<AnyObject>) -> Void)?) {
        var data: Array<String> = []
        for value: String in names {
            if value.lowercaseString.rangeOfString(string.lowercaseString) != nil {
                data.append(value)
            }
        }
        completion!(results: data)
    }
    
    func tokenView(token: KSTokenView, displayTitleForObject object: AnyObject) -> String {
        return object as! String
    }
}

