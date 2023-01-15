//
//  ChildSocialAddedController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 14/1/2023.
//

import Foundation
import UIKit

class ChildSocialAddedController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func nextAction(_ sender: Any) {
        performSegue(withIdentifier: "socialChildAddedSegue", sender: nil)
    }
}
