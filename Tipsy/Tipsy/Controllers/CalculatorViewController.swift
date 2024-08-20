//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    var totalValue: Double?
    var tip: Double?
    var numberOfPeople: Double?
    var valuePerPerson: Double?
    var selectedPct: Double?

    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        let isZeroButton = sender.titleLabel?.text == "0%"
        let isTenButton = sender.titleLabel?.text == "10%"
        let isTwentyButton = sender.titleLabel?.text == "20%"
        zeroPctButton.isSelected = isZeroButton
        tenPctButton.isSelected = isTenButton
        twentyPctButton.isSelected = isTwentyButton
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        selectedPct = 0.0
        if zeroPctButton.isSelected {
            selectedPct = 0
        } else if tenPctButton.isSelected {
            selectedPct = 0.1
        } else {
            selectedPct = 0.2
        }
        totalValue = Double(billTextField.text ?? "0.0")!
        tip = selectedPct! + 1
        numberOfPeople = Double(splitNumberLabel.text!)!
        valuePerPerson = (totalValue! * tip!) / numberOfPeople!
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResults" {
            if let vc = segue.destination as? ResultsViewController {
                vc.totalPerPerson = String(format: "%.2f", valuePerPerson!)
                vc.numberOfPeople = "\(Int(numberOfPeople!))"
                vc.tip = "\(selectedPct! * 100.0)%"
            }
        }
    }

}

