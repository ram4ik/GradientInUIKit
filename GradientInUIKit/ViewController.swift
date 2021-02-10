//
//  ViewController.swift
//  GradientInUIKit
//
//  Created by ramil on 10.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.red.cgColor,
            UIColor.blue.cgColor,
            UIColor.yellow.cgColor,
            UIColor.orange.cgColor,
            UIColor.purple.cgColor,
            UIColor.systemPink.cgColor
        ]
        
        gradientLayer.locations = [0.0, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
        
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        view.layer.addSublayer(gradientLayer)
    }

}

