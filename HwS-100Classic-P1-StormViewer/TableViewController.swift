//
//  ViewController.swift
//  HwS-100Classic-P1-StormViewer
//
//  Created by Glenn Drescher on 15/10/2021.
//

import UIKit

class TableViewController: UITableViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl")  {
                // this is a picture to load!
                pictures.append(item)
            }
        }
    }
}

