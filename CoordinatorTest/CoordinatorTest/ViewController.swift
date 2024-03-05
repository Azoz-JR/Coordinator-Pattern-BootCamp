//
//  ViewController.swift
//  CoordinatorTest
//
//  Created by Azoz Salah on 04/03/2024.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    @IBOutlet var product: UISegmentedControl!
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription(to: product.selectedSegmentIndex)
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        coordinator?.createAccount()
    }
    
}

