//
//  ViewController.swift
//  DependencyExample
//
//  Created by hefgi on 08/15/2018.
//  Copyright (c) 2018 hefgi. All rights reserved.
//

import UIKit
import DependencyExample

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showDependencyTapped(_ sender: Any) {
        let vc = DependencyViewController.instantiate()
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController: DependencyViewControllerDelegate {
    func viewController(_ viewController: DependencyViewController, dismissTappedAnimated animated: Bool) {
        viewController.dismiss(animated: true, completion: nil)
    }
}
