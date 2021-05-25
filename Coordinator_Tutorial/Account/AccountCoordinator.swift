//
//  AccountCoordinator.swift
//  Coordinator_Tutorial
//
//  Created by Marcio Habigzang Brufatto on 25/05/21.
//

import UIKit

protocol AccountCoordinatorProtocol: Coordinator {
    var parentCoordinator: MainCoordinatorProtocol? { get set }
}

class AccountCoordinator: AccountCoordinatorProtocol {
    
    var parentCoordinator: MainCoordinatorProtocol?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = CreateAccountViewController.instantiate(storyBoardName: "CreateAccountStoryboard")
            vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
