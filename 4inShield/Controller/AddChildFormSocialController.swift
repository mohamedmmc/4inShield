//
//  AddChildFormController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 14/1/2023.
//


import Foundation
import UIKit

class AddChildFormSocialController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func nextAction(_ sender: Any) {
        performSegue(withIdentifier: "socialChildSegue", sender: nil)
    }
    @IBAction func skipAction(_ sender: Any) {
        performSegue(withIdentifier: "skip2Segue", sender: nil)
    }
}

