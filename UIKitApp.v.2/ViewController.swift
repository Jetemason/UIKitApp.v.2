//
//  ViewController.swift
//  UIKitApp.v.2
//
//  Created by Игорь Ильин on 13.03.2020.
//  Copyright © 2020 Igor Ilyin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // Segmented Control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
    }

    @IBAction func changeSegment() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "First segment!"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Second segment!"
            mainLabel.textColor = .blue
        case 2:
            mainLabel.text = "Third segment!"
            mainLabel.textColor = .yellow
        default:
            break
        }
    }
    
}

