//
//  ViewController.swift
//  YouTubePlayerNew
//
//  Created by amit sahu on 08/08/16.
//  Copyright © 2016 tpcg. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class ViewController: UIViewController {

    @IBOutlet weak var player: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Request to turn on accelerometer and begin receiving accelerometer events
        
        let playerVars = [
            //"controls": 0,
            //"playsinline" : 0,
            "autoplay" : 1,
            "autohide" : 1,
            "rel" : 0,
            //"showinfo" : 0,
            //"modestbranding" : 1
        ]

        
        player.loadWithVideoId("VwCdNJsJLhc",playerVars: playerVars)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.Portrait ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.PortraitUpsideDown ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
            return true
        }
        else {
            return false
        }
    }
    

    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.LandscapeRight
    }


}

