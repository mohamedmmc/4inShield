//
//  DashboardController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 14/1/2023.
//

import UIKit

class DashboardController: UIViewController {

    @IBOutlet weak var phoneCallLabel: UILabel!
    @IBOutlet weak var deviseUsageLabel: UILabel!
    @IBOutlet weak var lastNightSleepLabel: UILabel!
    @IBOutlet weak var dangerLevelLabel: UILabel!

    @IBOutlet weak var dayButton: UIButton!
    @IBOutlet weak var weekButton: UIButton!
    @IBOutlet weak var monthButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func monthAction(_ sender: Any) {
        dangerLevelLabel.text = "High"
        deviseUsageLabel.text = "18H"
        phoneCallLabel.text = "17H"
        lastNightSleepLabel.text = "5H"
        dayButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        dayButton.tintColor = UIColor.lightGray
        weekButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        weekButton.tintColor = UIColor.lightGray
        monthButton.backgroundColor = UIColor.white
        monthButton.tintColor = UIColor(red: 63/255, green: 99/255, blue: 169/255, alpha: 1)
    }
    @IBAction func weekAction(_ sender: Any) {
        dangerLevelLabel.text = "Medium"
        deviseUsageLabel.text = "4H"
        phoneCallLabel.text = "5H"
        lastNightSleepLabel.text = "4H"
        dayButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        dayButton.tintColor = UIColor.lightGray
        weekButton.backgroundColor = UIColor.white
        weekButton.tintColor = UIColor(red: 63/255, green: 99/255, blue: 169/255, alpha: 1)
        monthButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        monthButton.tintColor = UIColor.lightGray
    }
    @IBAction func dayAction(_ sender: Any) {
        dangerLevelLabel.text = "Low"
        deviseUsageLabel.text = "3H"
        phoneCallLabel.text = "1H"
        lastNightSleepLabel.text = "2H"
        dayButton.backgroundColor = UIColor.white
        dayButton.tintColor = UIColor(red: 63/255, green: 99/255, blue: 169/255, alpha: 1)
        weekButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        weekButton.tintColor = UIColor.lightGray
        monthButton.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        monthButton.tintColor = UIColor.lightGray
    }
}
