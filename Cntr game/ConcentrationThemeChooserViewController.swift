//
//  ConcentrationThemeChooserViewController.swift
//  Cntr game
//
//  Created by Павел on 20.04.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    let themes = [
    "Animals": "🐵🐷🐙🐶🐰🐸🐥🐯🐮🦀🦋",
    "Faces": "😎😍🥶😈🤢😇😲😡",
    "Sport": "⚽️🏀🏈🏐🎾🎱🏆🎲"
    ]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle,
                let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
                
            }
        }
    }

}
