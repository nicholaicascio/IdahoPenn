//
//  MugshotViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 3/8/20.
//  Copyright © 2020 Nicholai Cascio. All rights reserved.
//

import UIKit

class MugshotViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func imgTap1(_ sender: UITapGestureRecognizer) {
    let imageView = sender.view as! UIImageView
    let newImageView = UIImageView(image: imageView.image)
    newImageView.frame = self.view.frame
    newImageView.backgroundColor = .black
    newImageView.contentMode = .scaleAspectFit
    newImageView.isUserInteractionEnabled = true
    let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissFullscreenImage(sender:)))
    newImageView.addGestureRecognizer(tap)
    self.view.addSubview(newImageView)
        navigationController?.setNavigationBarHidden(true, animated: true)

    }
    
    @objc func dismissFullscreenImage(sender: UITapGestureRecognizer) {
        sender.view?.removeFromSuperview()
        navigationController?.setNavigationBarHidden(false, animated: true)

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
