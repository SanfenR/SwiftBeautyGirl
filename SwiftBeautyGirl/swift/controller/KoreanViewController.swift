//
//  KoreanViewController.swift
//  SwiftBeautyGirl
//
//  Created by fen san on 2017/8/30.
//  Copyright © 2017年 sanfen. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func faceBookTapped(_ sender: Any) {
        let controller = SLComposeViewController(forServiceType: SLServiceTypeFacebook)!
        controller.setInitialText("一起来玩女神画廊")
        controller.add(imageView.image)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterTapped(_ sender: Any) {
        let controller = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
        controller.setInitialText("一起来玩女神画廊")
        controller.add(imageView.image)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func weiboTapped(_ sender: Any) {
        let controller = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)!
        controller.setInitialText("一起来玩女神画廊")
        controller.add(imageView.image)
        self.present(controller, animated: true, completion: nil)
    }
}
