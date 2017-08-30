//
//  ViewController.swift
//  SwiftBeautyGirl
//
//  Created by fen san on 2017/8/30.
//  Copyright © 2017 sanfen. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var beautyPicker: UIPickerView!

    let beauties = ["范冰冰", "李冰冰", "王菲", "杨幂", "周迅"]


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if (segue.identifier == "GoToGallery") {
            let index = beautyPicker.selectedRow(inComponent: 0)
            var imageName: String?
            switch index {
            case 0:
                imageName = "fangbingbing";
            case 1:
                imageName = "libingbing";
            case 2:
                imageName = "wangfei";
            case 3:
                imageName = "yangmi";
            case 4:
                imageName = "zhouxu";
            default:
                imageName = nil
            }
            let vc = segue.destination as! GalleryViewController
            vc.image = imageName
        }

    }

    //Unwind segue
    @IBAction func close(segue: UIStoryboardSegue){
        print("close")
    }
}
