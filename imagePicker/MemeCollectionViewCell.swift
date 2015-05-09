//
//  MemeCollectionViewCell.swift
//  imagePicker
//
//  Created by Boris Alexis Gonzalez Macias on 4/27/15.
//  Copyright (c) 2015 PropiedadFacil. All rights reserved.
//

import UIKit

class MemeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeTopLabel: UILabel!
    @IBOutlet weak var memeBotLabel: UILabel!
    
    // Setters
    func setText(topString : String, bottomString : String){
        memeTopLabel.text = topString
        memeBotLabel.text = bottomString
    }
    
    func setImage(image : UIImage){
        memeImageView.image = image
    }
    
}
