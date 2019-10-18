//
//  MapViewController.swift
//  IdahoPenn
//
//  Created by Nicholai Cascio on 10/16/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var svContent: UIScrollView!
    @IBOutlet weak var mapIMG: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        svContent.delegate = self
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
