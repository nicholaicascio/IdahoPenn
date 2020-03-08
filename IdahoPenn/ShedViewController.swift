//
//  ShedViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 3/4/20.
//  Copyright © 2020 Nicholai Cascio. All rights reserved.
//

import UIKit

class ShedViewController: UIViewController {

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
    }
    
    @IBAction func imgTap2(_ sender: UITapGestureRecognizer) {
    let imageView = sender.view as! UIImageView
    let newImageView = UIImageView(image: imageView.image)
    newImageView.frame = self.view.frame
    newImageView.backgroundColor = .black
    newImageView.contentMode = .scaleAspectFit
    newImageView.isUserInteractionEnabled = true
    let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissFullscreenImage(sender:)))
    newImageView.addGestureRecognizer(tap)
    self.view.addSubview(newImageView)
    }
    
    @objc func dismissFullscreenImage(sender: UITapGestureRecognizer) {
        sender.view?.removeFromSuperview()
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //make sure that the segue is going to secondViewController
        if segue.destination is AudioTabViewController{
          // now set a var that points to that new viewcontroller so you can call the method correctly
            let nextController = (segue.destination as! AudioTabViewController)
            nextController.setResultLabel(index: 1)
    }
    

}
}
