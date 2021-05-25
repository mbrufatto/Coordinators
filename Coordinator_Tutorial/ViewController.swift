//
//  ViewController.swift
//  Coordinator_Tutorial
//
//  Created by Marcio Habigzang Brufatto on 23/05/21.
//

import UIKit

class ViewController: UIViewController, Storyborded {

    weak var coordinator: MainCoordinatorProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription()
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
}

