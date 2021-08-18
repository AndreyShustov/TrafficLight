//
//  ViewController.swift
//  TrafficLight
//
//  Created by Андрей  Шустов on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 50
        
    }


}

