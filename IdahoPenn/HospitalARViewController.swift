//
//  HospitalARViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 2/21/20.
//  Copyright © 2020 Nicholai Cascio. All rights reserved.
//

import UIKit
import RealityKit

class HospitalARViewController: UIViewController {
    
    @IBOutlet weak var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let anchor = try? Hospital.load_Hospital() else {return}
        arView.scene.anchors.append (anchor)
        // Do any additional setup after loading the view.
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
