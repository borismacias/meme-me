//
//  MemeCollectionViewController.swift
//  imagePicker
//
//  Created by Boris Alexis Gonzalez Macias on 4/27/15.
//  Copyright (c) 2015 PropiedadFacil. All rights reserved.
//

import UIKit

class MemeCollectionViewController : UIViewController, UICollectionViewDelegate {

    var memes: [Meme]!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes as [Meme]
        if(memes.count == 0){
            let viewController = storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! UIViewController
            self.presentViewController(viewController, animated: true, completion: nil)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes as [Meme]
        self.collectionView.reloadData()
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MemeCell", forIndexPath: indexPath) as! MemeCollectionViewCell
        let meme = memes[indexPath.item]
        cell.setText(meme.top, bottomString: meme.bot)
        cell.setImage(meme.image)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let detailController = self.storyboard!.instantiateViewControllerWithIdentifier("MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = self.memes[indexPath.row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
    
}
