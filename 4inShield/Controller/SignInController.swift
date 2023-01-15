//
//  SignInController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 13/1/2023.
//

import Foundation
import UIKit

class SignInController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextAction(_ sender: Any) {
        performSegue(withIdentifier: "connectedSegue", sender: nil)
    }
}
