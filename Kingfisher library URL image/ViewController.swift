//
//  ViewController.swift
//  Kingfisher library URL image
//
//  Created by macmini01 on 18/08/22.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var urlTextField: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    //MARK: Actions
    @IBAction func downloadImage(_ sender: Any) {
        guard let imageURL = URL(string: urlTextField.text ?? "") else {
            print("Invalid URL Entered!")
            return
        }
        imageView.kf.setImage(with: imageURL)
    }
    
}

