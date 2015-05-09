//
//  MemeDetailViewController.swift
//  imagePicker
//
//  Created by Boris Alexis Gonzalez Macias on 4/27/15.
//  Copyright (c) 2015 PropiedadFacil. All rights reserved.
//

import UIKit

class MemeDetailViewController : UIViewController {
   
    @IBOutlet weak var memeOutlet: UIImageView!
    var meme: Meme!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.memeOutlet!.image = self.meme.meme
        //Hiding the tabBar on the detail view
        self.tabBarController?.tabBar.hidden = true
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        //Showing the tabbar after leaving the detail view
        self.tabBarController?.tabBar.hidden = false
    }
}
