//
//  LaunchViewController.swift
//  Pairs Of Memory
//
//  Created by Andrew Maher on 10/14/20.
//  Copyright © 2020 Andrew Maher. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet var logoName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        logoName.text = "Boost Up \nYour \nMemory"
    }
}
