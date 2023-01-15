//
//  addChildSegue.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 13/1/2023.
//

import Foundation
import UIKit

class AddChildSegueController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func nextAction(_ sender: Any) {
        performSegue(withIdentifier: "addChildFormSegue", sender: nil)
    }
    @IBAction func skipAction(_ sender: Any) {
        performSegue(withIdentifier: "skip1Segue", sender: nil)
    }
}
