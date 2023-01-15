//
//  ChoiceController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 13/1/2023.
//

import Foundation
import UIKit
class ChoiceController: UIViewController {
    
    @IBOutlet weak var childView: UIView!
    @IBOutlet weak var parentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.child(_:)))
        childView.addGestureRecognizer(tap)
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.parents(_:)))
        parentView.addGestureRecognizer(tap2)
    }
    
    @objc func parents(_ sender: UITapGestureRecognizer? = nil) {
        performSegue(withIdentifier: "addChildSegue", sender: nil)
    }
    
    @objc func child(_ sender: UITapGestureRecognizer? = nil) {
        performSegue(withIdentifier: "firstSkipSegue", sender: nil)
    }
}
