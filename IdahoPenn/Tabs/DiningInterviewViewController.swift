//
//  DiningInterviewViewController.swift
//  IdahoPenn
//
//  Created by N Cascio on 3/8/20.
//  Copyright © 2020 Nicholai Cascio. All rights reserved.
//

import UIKit
import AVFoundation

class DiningInterviewViewController: UIViewController {

    var player:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let audiopath = Bundle.main.path(forResource: "Dining_Interview", ofType: "mp3")
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
