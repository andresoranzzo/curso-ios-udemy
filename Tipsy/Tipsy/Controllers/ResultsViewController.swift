//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by evo on 01/02/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    var totalPerPerson = ""
    var numberOfPeople = ""
    var tip = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = totalPerPerson
        settingsLabel.text = "Split between \(numberOfPeople) people, with \(tip)% tip."
    }

    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
