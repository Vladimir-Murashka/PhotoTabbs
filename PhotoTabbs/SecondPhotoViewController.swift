//
//  SecondPhotoViewController.swift
//  PhotoTabbs
//
//  Created by Swift Learning on 26.07.2022.
//

import UIKit

class SecondPhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var image:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
        
        
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, boll, _, _ in
            if boll {
                print("Сообщение отправлено")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
        
        
    }
    
    
}
