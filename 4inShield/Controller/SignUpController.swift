//
//  SignUpController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 13/1/2023.
//

import Foundation
import UIKit

class SignUpController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signUpAction(_ sender: Any) {
        performSegue(withIdentifier: "signUpSegue", sender: nil)
    }
}
