//
//  ViewController.swift
//  Audio Player Review
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    var player:AVAudioPlayer  = AVAudioPlayer()
    
    
    
    @IBAction func play(_ sender: AnyObject)
    {
        player.play()
    }
    @IBAction func pause(_ sender: AnyObject)
    {
        
        player.pause()
    }
    @IBAction func replay(_ sender: AnyObject)
    {
        
        player.currentTime = 0
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do
        {
            let audioPth = Bundle.main.path(forResource: "song", ofType: ".mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPth!) as URL)
        }
        
        catch {
            
        }
     }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

