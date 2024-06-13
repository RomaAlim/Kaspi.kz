//
//  ViewController.swift
//  Kaspi.kz
//
//  Created by Ramazan Kalabay on 13.06.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ViewCorner1: UIView!
    @IBOutlet weak var ViewCorner2: UIView!
    @IBOutlet weak var ViewCorner3: UIView!
    @IBOutlet weak var ViewCorner4: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewCorner1.layer.cornerRadius = 10
        ViewCorner2.layer.cornerRadius = 10
        ViewCorner3.layer.cornerRadius = 10
        ViewCorner4.layer.cornerRadius = 10
        
        let backBarButton = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
               self.navigationController?.navigationBar.topItem?.backBarButtonItem = backBarButton
               self.navigationController?.navigationBar.tintColor = .black
    }
    
    
}
