//
//  ViewController.swift
//  OpenIBooks
//
//  Created by Robin on 1/13/16.
//  Copyright © 2016 Robin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isbn = "9787508649719"
    var id = "1048889549"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func openiBooks(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "itms-bookss://")!)
    } 
    
    @IBAction func openiBooksWithISBN(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "itms-bookss://itunes.apple.com/book/isbn\(isbn)")!)
    }
    @IBAction func openiBooksWithId(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "itms-bookss://itunes.apple.com/book/id\(id)")!)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

