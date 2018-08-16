//
//  DependencyViewController.swift
//  DependencyExample
//
//  Created by François-Julien Alcaraz on 15/08/2018.
//  Copyright © 2018 François-Julien Alcaraz. All rights reserved.
//

import UIKit

public protocol DependencyViewControllerDelegate {
    func viewController(_ viewController: DependencyViewController, dismissTappedAnimated animated: Bool)
}

open class DependencyViewController: UIViewController {
    
    open var delegate: DependencyViewControllerDelegate?

    override open func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    open static func instantiate() -> DependencyViewController {
        
        let podBundle = Bundle(for: DependencyViewController.self)
        let bundleURL = podBundle.url(forResource: "DependencyExample", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        let storyboard = UIStoryboard(name: "Dependency", bundle: bundle)
        
        guard let vc = storyboard.instantiateInitialViewController() as? DependencyViewController else {
            fatalError("Couldn't instantiate initial viewcontroller from Dependency")
        }
        return vc
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        delegate?.viewController(self, dismissTappedAnimated: true)
    }
    
    func giveMeAString() -> String {
        return "1234"
    }
}

