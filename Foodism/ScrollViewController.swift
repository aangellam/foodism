//
//  ScrollViewController.swift
//  Foodism
//
//  Created by Angel Lam on 2/7/16.
//  Copyright © 2016 hackatbrown. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {
    
    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            imageView = UIImageView(image: UIImage(named: "menu_shrimp_clean.png"))
            scrollView = UIScrollView(frame: view.bounds)
            scrollView.backgroundColor = UIColor.blackColor()
            scrollView.contentSize = imageView.bounds.size
        scrollView.autoresizingMask = UIViewAutoresizing.FlexibleWidth;  UIViewAutoresizing.FlexibleHeight
            
            scrollView.addSubview(imageView)
            view.addSubview(scrollView)
        }

        // Do any additional setup after loading the view.
    }

     func didReceiveMemoryWarning() {
        }    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


