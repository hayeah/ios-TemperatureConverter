//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Howard Yeh on 2014-10-13.
//  Copyright (c) 2014 Howard Yeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

