//
//  LocationViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 11/1/19.
//  Copyright © 2019 Nicholai Cascio. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ExitClicked(_ sender: Any) {
        if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: {
               self.navigationController?.popToRootViewController(animated: true)
            })
        }
        else {
            self.navigationController!.popToRootViewController(animated: true)
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
