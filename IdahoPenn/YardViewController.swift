//
//  YardViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 1/29/20.
//  Copyright © 2020 Nicholai Cascio. All rights reserved.
//

import UIKit
import AVFoundation

class YardViewController: UIViewController {

     var player:AVAudioPlayer = AVAudioPlayer()
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           do{
               let audiopath = Bundle.main.path(forResource: "yard_caption", ofType: "wav")
               try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audiopath!)as URL)
           }
           catch{
               //error
           }

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
    
    @IBAction func imgTap3(_ sender: UITapGestureRecognizer) {
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
    
    @IBAction func imgTap4(_ sender: UITapGestureRecognizer) {
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
    
       @IBAction func PlayClicked(_ sender: Any) {
           player.play()
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
