//
//  WelcomeeController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 14/1/2023.
//

import Foundation
import UIKit

class WelcomeeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func goToDashboardAction(_ sender: Any) {
        performSegue(withIdentifier: "newUserSegue", sender: nil)
    }
}
