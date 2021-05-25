//
//  Storyboarded.swift
//  Coordinator_Tutorial
//
//  Created by Marcio Habigzang Brufatto on 23/05/21.
//

import Foundation
import UIKit

protocol Storyborded {
    
    static func instantiate(storyBoardName: String) -> Self
}

extension Storyborded where Self: UIViewController {
    
    static func instantiate(storyBoardName: String ) -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)
        
        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        
        // load our storyboard
        let storyboard = UIStoryboard(name: storyBoardName, bundle: Bundle.main)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
