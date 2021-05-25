//
//  BuyCoordinator.swift
//  Coordinator_Tutorial
//
//  Created by Marcio Habigzang Brufatto on 25/05/21.
//

import UIKit

protocol BuyCoordinatorProtocol: Coordinator  {
    var parentCoordinator: MainCoordinatorProtocol? { get set }
}

class BuyCoordinator: BuyCoordinatorProtocol {
    var parentCoordinator: MainCoordinatorProtocol?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = BuyViewController.instantiate(storyBoardName: "BuyStoryboard")
            vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
