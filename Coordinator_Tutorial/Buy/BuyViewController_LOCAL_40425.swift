//
//  BuyViewController.swift
//  Coordinator_Tutorial
//
//  Created by Marcio Habigzang Brufatto on 23/05/21.
//

import UIKit

class BuyViewController: UIViewController, Storyborded {

    weak var coordinator: MainCoordinator?
//    weak var coordinator: BuyCoordinator?
    var selectProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        coordinator?.didFinishBuying()
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
