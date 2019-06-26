//
//  ViewController.swift
//  SwiftDemo
//
//  Created by annidyfeng on 2018/10/26.
//  Copyright © 2018年 annidy. All rights reserved.
//

import UIKit
import MBProgressHUD
import SuperPlayer

class ViewController: UIViewController {
    
    var player: SuperPlayerView? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let screen = UIScreen.main.bounds

        let playView = UIView()
        self.view.addSubview(playView)
        playView.frame = CGRect(x: 0, y: 0, width: screen.width, height: 200)
        let thePlayer = SuperPlayerView(frame: CGRect(x: 0, y: 0, width: screen.width, height: 200));
        thePlayer.fatherView = playView
        let model = SuperPlayerModel()
        model.videoURL = "http://1253131631.vod2.myqcloud.com/26f327f9vodgzp1253131631/f4c0c9e59031868222924048327/f0.mp4"
//        model.videoURL = "https://t.v4.51eduline.com/data/upload/2018/1229/10/5c26de01b387c.m3u8?m=-yaZdvCg7j7uyIJ5NKAi9A&e=1559618459"
        model.videoURL = "http://live.dev.yimeiyouke.com/videoRecord/1539668465741.flv?auth_key=1561375347-0-0-ae7b91c4b495fc6d015389416af1e2bf"
        thePlayer.play(with: model)
        
        player = thePlayer
    }


}

