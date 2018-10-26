//
//  ViewController.swift
//  JenkinsStarter
//
//  Created by Teja Ketepalle on 26/10/18.
//  Copyright © 2018 Teja Ketepalle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    let vm = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = vm.getLabelText()
        print(vm.getLabelText())
    }
}

