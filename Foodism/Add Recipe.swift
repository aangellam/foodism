//
//  Add Recipe.swift
//  Foodism
//
//  Created by Natnaree Ruethaivanich on 2/6/2559 BE.
//  Copyright © 2559 hackatbrown. All rights reserved.
//

import UIKit

class Add_Recipe: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    //MARK: Properties
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        photoImageView.userInteractionEnabled = true
     let recognizer = UITapGestureRecognizer (target: self, action: "selectImageFromPhotoLibrary:")
    recognizer.numberOfTapsRequired = 1
        photoImageView.addGestureRecognizer(recognizer)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK:UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(picker:UIImagePickerController){
        //Dismiss the picker if the user canceled
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediawithInfo info: [String : AnyObject]) {
        //The info dictionary contains multiple representations of the image, and this uses the  original.
        
        let selectedImage = info [UIImagePickerControllerOriginalImage] as! UIImage
        
        //setphotoImageView to display selected image.
        photoImageView.image = selectedImage
        
        //Dismiss the picker.
        dismissViewControllerAnimated(true,completion:nil)
        
    }
    
    //MARK: - Actions
    
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        
        //UIImagePickerController is a view controller that lets users pick photos from their library
        let imagePickerController = UIImagePickerController()
    
        //Only allow photos to be picked not taken
        imagePickerController.sourceType = .PhotoLibrary
        
        //Make sure ViewController is notified when user picks image
        imagePickerController.delegate = self
                
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    

}
