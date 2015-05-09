//
//  Meme.swift
//  imagePicker
//
//  Created by Boris Alexis Gonzalez Macias on 4/26/15.
//  Copyright (c) 2015 PropiedadFacil. All rights reserved.
//

import UIKit

class Meme {
    
    var top : String!
    var bot : String!
    var image : UIImage!
    var meme : UIImage!
    
    init (top: String, bot: String, image: UIImage, meme: UIImage) {
        self.top = top
        self.bot = bot
        self.image = image
        self.meme = meme
    }

}
