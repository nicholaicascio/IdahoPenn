//
//  MapViewController.swift
//  IdahoPenn
//
//  Created by Nicholai Cascio on 10/16/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var mapIMG: UIImageView!
    @IBOutlet weak var btnBG0: UIView!
    @IBOutlet weak var btnBG1: UIView!
    @IBOutlet weak var btnBG2: UIView!
    @IBOutlet weak var btnBG3: UIView!
    @IBOutlet weak var btnBG4: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let BtnFormattingArray: [UIView] = [btnBG0, btnBG1, btnBG2]
        
        for button in BtnFormattingArray{
            button.layer.cornerRadius = 5;
            button.layer.masksToBounds = true;
        }
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?{
        return mapIMG
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
