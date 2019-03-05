//
//  SentMemeTableViewController.swift
//  Meme-Me-V1
//
//  Created by Sarah Rebecca Estrellado on 2/26/19.
//  Copyright © 2019 Sarah Rebecca Estrellado. All rights reserved.
//

import Foundation
import UIKit

/* TODO
 1) Set up storyboard
 2) Set up TableViewController
 3) Set up CollectionViewController
 4) Set up Flow
 5) Fix bar button issues on editor view
 6) Fix bug where date doesn't show up
 7) Fix flow bug
 
 
 */

 class SentMemeTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath) as! MemeTableViewCell
        let meme = memes[indexPath.row]
        cell.imageView!.image = meme.memedImage
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        controller.meme = self.memes[indexPath.row]
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
