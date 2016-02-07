//
//  ViewController.swift
//  Foodism
//
//  Created by Angel Lam on 2/6/16.
//  Copyright © 2016 hackatbrown. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
//angel's part
    var ButtonArray = [String] ()
    var imageNames = [String] ()
    var pageNames = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        self.collectionView?.collectionViewLayout = RecipeLayout()
        ButtonArray = ["Szechwan Shrimp","Fluffy Pancake","Coconut Chicken","Mapled Salmon","Cranberry Salad","Szechwan Shrimp","Fluffy Pancake","Coconut Chicken","Mapled Salmon","Cranberry Salad","Szechwan Shrimp","Fluffy Pancake","Coconut Chicken","Mapled Salmon","Cranberry Salad"]
        imageNames = ["pic shrimp","pic pancakes","pic coconut chick","pic salmon","pic salad","pic shrimp","pic pancakes","pic coconut chick","pic salmon","pic salad","pic shrimp","pic pancakes","pic coconut chick","pic salmon","pic salad"]
        pageNames = ["menu shrimp 2","menu pancakes 2","menu coconut chicken 2","menu slamon","menu salad2 2","menu shrimp 2","menu pancakes 2","menu coconut chicken 2","menu slamon","menu salad2 2","menu shrimp 2","menu pancakes 2","menu coconut chicken 2","menu slamon","menu salad2 2"]
        
      //  self.collectionView?.delegate = self
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ButtonArray.count
    }
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell : RecipeCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! RecipeCollectionViewCell
        cell.titleButton.setTitle(ButtonArray[indexPath.row], forState: UIControlState.Normal)
        cell.imageView.image = UIImage(named:imageNames[indexPath.row])
        return cell
        
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        print("SELECTED CELL")
        let pageController : PageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("pageController") as! PageViewController
        
        pageController.imageCame = pageNames[indexPath.row]
        
        self.presentViewController(pageController, animated: true, completion: nil)
        
        
    }


}

