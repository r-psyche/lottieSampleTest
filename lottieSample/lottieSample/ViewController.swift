//
//  ViewController.swift
//  lottieSample
//
//  Created by jangmi on 2019/11/29.
//  Copyright © 2019 jangmi. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    let animationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let animation = Animation.named("11650-infinity-loader")
        
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        animationView.center = self.view.center
        self.view.addSubview(animationView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animationView.play(fromProgress: 0,
                           toProgress: 1,
                           loopMode: LottieLoopMode.loop,
                           completion: { (finished) in
                            if finished {
                                print("Animation Complete")
                            } else {
                                print("Animation cancelled")
                            }
        })
    }


}

