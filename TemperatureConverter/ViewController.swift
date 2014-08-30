//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Howard Yeh on 2014-08-27.
//  Copyright (c) 2014 Howard Yeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var temperatureSlider: UISlider!

    @IBAction func sliderChanged(sender: UISlider, forEvent event: UIEvent) {
        // println("slider.value: \(sender.value)")
        updateTemperatureDisplay()
    }

    func updateTemperatureDisplay() {
        let celsius = temperatureSlider.value
        let farenheit = celsius * 9 / 5 + 32

        // A local function to help with formatting
        func formatFloat(f: Float) -> String {
            return String(format: "%.1f", arguments: [f])
        }

        celsiusLabel.text = "\(formatFloat(celsius))C"
        farenheitLabel.text = "\(formatFloat(farenheit))F"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateTemperatureDisplay()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

