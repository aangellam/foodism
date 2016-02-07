//
//  PageViewController.swift
//  Foodism
//
//  Created by Angel Lam on 2/7/16.
//  Copyright © 2016 hackatbrown. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    
    var imageCame : String = ""
    
    @IBOutlet var recipeImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.recipeImageView.image = UIImage(named: imageCame)
        print("IMAGE NAME WE GOT: \(imageCame)")

    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
