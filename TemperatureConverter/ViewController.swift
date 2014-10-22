//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Howard Yeh on 2014-10-13.
//  Copyright (c) 2014 Howard Yeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!

    @IBAction func temperatureSliderChanged(sender: UISlider) {
        updateTemperatureDisplays()
    }

//   `F = (C x 9/5) + 32`
//   `K = C + 273.15`
    func updateTemperatureDisplays() {
        let c = temperatureSlider.value
        let f = c * 9/5 + 32
        let k = c + 273.15
        celsiusLabel.text = String(format: "%.1fC", arguments: [c])
        fahrenheitLabel.text = String(format: "%.1fF", arguments: [f])
        kelvinLabel.text = String(format: "%.2fK", arguments: [k])
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        temperatureSlider.maximumValue = 100
        temperatureSlider.minimumValue = 0
        temperatureSlider.value = 30

        updateTemperatureDisplays()
    }

//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//        println("will layout subviews")
//
//        view.superview
//        let screen = UIScreen.mainScreen()
//        // always return the size of the screen in portraits orientation
//        println("screen fixed bounds: \(screen.fixedCoordinateSpace.bounds)")
//        // since ios8, this reflects the size of the screen in its current orientation
//        println("screen bounds: \(screen.bounds)")
//
//        println("top layout guide: \(topLayoutGuide.length)")
//
//        // center the lable using intrinsic content size
//        // titleLabel.center = CGPoint(x: view.center.x, y: topLayoutGuide.length + 16.0 + titleLabel.frame.size.height / 2)
//
//        // stretch to fit the screen
//        titleLabel.frame = CGRect(x: 16, y: topLayoutGuide.length + 16, width: screen.bounds.width-32, height: 21)
//
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

