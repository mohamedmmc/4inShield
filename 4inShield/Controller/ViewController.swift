//
//  ViewController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 12/1/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackMail: UIStackView!
    @IBOutlet weak var signUpStack: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        stackMail.addGestureRecognizer(tap)
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(self.signUp(_:)))
        signUpStack.addGestureRecognizer(tap2)
        signUpStack.isUserInteractionEnabled = true
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        performSegue(withIdentifier: "signIn", sender: nil)
    }
    @objc func signUp(_ sender: UITapGestureRecognizer? = nil) {
        performSegue(withIdentifier: "signUp", sender: nil)
    }
    
}

