//
//  MemeTableViewController.swift
//  imagePicker
//
//  Created by Boris Alexis Gonzalez Macias on 4/27/15.
//  Copyright (c) 2015 PropiedadFacil. All rights reserved.
//

import UIKit

class MemeTableViewController : UIViewController, UITableViewDataSource{
    
    var memes: [Meme]!
    
    @IBOutlet var tableView: UITableView!
    
    @IBAction func addMeme(sender: UIBarButtonItem) {
        var memeEditor = storyboard?.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        let navController = UINavigationController(rootViewController: memeEditor)
        self.presentViewController(navController, animated: true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        self.memes = appDelegate.memes
        self.tableView.reloadData()
    }
    
    //Start tableView delegate functions
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MemeRow") as! UITableViewCell
        let meme = self.memes[indexPath.row]
        
        // Set the name and image
        cell.textLabel?.text = meme.top + " " + meme.bot
        cell.imageView?.image = meme.image
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let detailController = self.storyboard!.instantiateViewControllerWithIdentifier("MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = self.memes[indexPath.row]
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }
    //End tableView delegate functions
}