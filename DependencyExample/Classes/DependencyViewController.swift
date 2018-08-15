//
//  DependencyViewController.swift
//  DependencyExample
//
//  Created by François-Julien Alcaraz on 15/08/2018.
//  Copyright © 2018 François-Julien Alcaraz. All rights reserved.
//

import UIKit

protocol DependencyViewControllerDelegate {
    func viewController(_ viewController: DependencyViewController, dismissTappedAnimated animated: Bool)
    
}

class DependencyViewController: UIViewController {
    
    var delegate: DependencyViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    static func instantiate() -> DependencyViewController {
        
        guard let vc = UIStoryboard(name: "Dependency", bundle: nil).instantiateInitialViewController() as? DependencyViewController else {
            fatalError("Couldn't instantiate initial viewcontroller from Dependency")
        }
        return vc
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        delegate?.viewController(self, dismissTappedAnimated: true)
    }
    
}

