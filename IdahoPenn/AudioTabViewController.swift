//
//  AudioTabViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 3/8/20.
//  Copyright © 2020 Nicholai Cascio. All rights reserved.
//

import UIKit

class AudioTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func setResultLabel(index: Int32){
        self.selectedIndex = Int(index);
        print("hello world")
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
