//
//  ChapelARViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 4/5/20.
//  Copyright © 2020 Nicholai Cascio. All rights reserved.
//

import UIKit
import RealityKit

class ChapelARViewController: UIViewController {

    @IBOutlet weak var arView: ARView!
    @IBOutlet weak var BG: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let anchor = try? Chapel.load_Chapel() else {return}
        arView.scene.anchors.append (anchor)
        // Do any additional setup after loading the view.
        
        let backgroundFormattingArray: [UIView] = [BG]
        
        for bg in backgroundFormattingArray{
            bg.layer.cornerRadius = 5;
            bg.layer.masksToBounds = true;
            bg.sendSubviewToBack(bg)
        }
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
