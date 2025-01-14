//
//  ViewController.swift
//  Importing from Photo Library
//
//  Created by Tingbo Chen on 2/8/16.
//  Copyright © 2016 Tingbo Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet var ImageOutlet: UIImageView!
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        print("image selected")
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        ImageOutlet.image = image
        
    }
    
    @IBAction func chooseImageButton(sender: AnyObject) {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        //image.sourceType = UIImagePickerControllerSourceType.Camera //To import from camera
        image.allowsEditing = true
        self.presentViewController(image, animated: true, completion: nil)
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

