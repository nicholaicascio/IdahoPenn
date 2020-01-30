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
