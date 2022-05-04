//
//  StartViewController.swift
//  Labo 1
//
//  Created by MAC on 2022-04-30.
//  Copyright © 2022 Ahuntsic. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    @IBAction func unwindToStart(segue: UIStoryboardSegue) {}
    @IBOutlet weak var playerName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playerName.text = GameConfig.sharedInstance.name
    }
    
}
