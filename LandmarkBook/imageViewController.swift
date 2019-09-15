//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Hamit  Tırpan on 15.09.2019.
//  Copyright © 2019 Hamit  Tırpan. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedLandmarkImage
        landmarkLabel.text = selectedLandmarkName
    }

}
