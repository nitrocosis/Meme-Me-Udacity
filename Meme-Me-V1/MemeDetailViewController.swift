//
//  MemeDetailViewController.swift
//  Meme-Me-V1
//
//  Created by Sarah Rebecca Estrellado on 2/28/19.
//  Copyright © 2019 Sarah Rebecca Estrellado. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    var meme: Meme!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        detailImageView.image = meme.memedImage
    }
}

