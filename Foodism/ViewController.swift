//
//  ViewController.swift
//  Foodism
//
//  Created by Angel Lam on 2/6/16.
//  Copyright © 2016 hackatbrown. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    var ButtonArray = [String] ()
    var imageNames = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        self.collectionView?.collectionViewLayout = RecipeLayout()
        ButtonArray = ["Angry cake","Creme","egg","break","Angry cake","Creme","egg","break","Angry cake","Creme","egg","break","Angry cake","Creme","egg","break","Angry cake","Creme","egg","break","Angry cake","Creme","egg","break"]
        imageNames = ["angry_birds_cake","creme_brelee","egg_benedict","full_breakfast","angry_birds_cake","creme_brelee","egg_benedict","full_breakfast","angry_birds_cake","creme_brelee","egg_benedict","full_breakfast","angry_birds_cake","creme_brelee","egg_benedict","full_breakfast","angry_birds_cake","creme_brelee","egg_benedict","full_breakfast","angry_birds_cake","creme_brelee","egg_benedict","full_breakfast", ]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ButtonArray.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell : RecipeCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! RecipeCollectionViewCell
        cell.titleButton.setTitle(ButtonArray[indexPath.row], forState: UIControlState.Normal)
        cell.imageView.image = UIImage(named:imageNames[indexPath.row])
        
        
        
        return cell
        
        
    }


}

