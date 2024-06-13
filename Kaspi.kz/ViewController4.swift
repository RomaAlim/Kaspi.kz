//
//  ViewController4.swift
//  Kaspi.kz
//
//  Created by Ramazan Kalabay on 13.06.2024.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var editcornerimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        editcornerimage.layer.cornerRadius = editcornerimage.frame.size.width / 2
        editcornerimage.clipsToBounds = true
                
        editcornerimage.layer.borderColor = UIColor.gray.cgColor
        editcornerimage.layer.borderWidth = 2.0
    }
    



}
