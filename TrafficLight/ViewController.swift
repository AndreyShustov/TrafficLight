//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей  Шустов on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        startButton.layer.cornerRadius = 10
    }
     
        
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        startButton.setTitle("NEXT", for: .normal)
        
        
        sender.tag += 1
        if sender.tag > 2 { sender.tag = 0 }
        
        switch sender.tag {
        case 1:
            redLightView.alpha = 1
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        case 2:
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            greenLightView.alpha = 0.3
        default:
            greenLightView.alpha = 1
            redLightView.alpha = 0.3
            yellowLightView.alpha = 0.3
        }
    }
}

