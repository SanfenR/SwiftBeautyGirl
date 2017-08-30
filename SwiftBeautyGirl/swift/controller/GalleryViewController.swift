
//
//  ViewController.swift
//  SwiftBeautyGirl
//
//  Created by fen san on 2017/8/30.
//  Copyright © 2017 sanfen. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {

    var image: String?
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let name = image {
            imageView.image = UIImage(named: name)
            navigationItem.title = name
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func shareTapped(_ sender: Any) {
        let controller = SLComposeViewController(forServiceType: SLServiceTypeFacebook)!
        controller.setInitialText("一起来玩女神画廊")
        controller.add(imageView.image)
        self.present(controller, animated: true, completion: nil)
    }
}
