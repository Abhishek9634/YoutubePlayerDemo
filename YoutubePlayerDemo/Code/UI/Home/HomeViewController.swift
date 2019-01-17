//
//  HomeViewController.swift
//  YoutubePlayerDemo
//
//  Created by Abhishek Thapliyal on 17/01/19.
//  Copyright © 2019 Nickelfox. All rights reserved.
//

import UIKit 

struct DummyVideo {
    static let HeMan = "7yeA7a0uS3A"
    static let RollerCoaster = "8lsB-P8nGSM"
}

class HomeViewController: UIViewController {

    @IBOutlet weak var ytPlayerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupYoutubePlayer()
    }

    private func setupYoutubePlayer() {
        self.ytPlayerView.load(withVideoId: DummyVideo.RollerCoaster)
    }
    
    @IBAction func playAction(_ sender: UIButton) {
        self.ytPlayerView.playVideo()
    }
    
    @IBAction func stopAction(_ sender: UIButton) {
        self.ytPlayerView.stopVideo()
    }
    
}

