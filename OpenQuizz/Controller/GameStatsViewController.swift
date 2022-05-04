//
//  GameStatsViewController.swift
//  Labo 1
//
//  Created by MAC on 2022-04-30.
//  Copyright © 2022 Ahuntsic. All rights reserved.
//

import UIKit

class GameStatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        timesNumber.text = String(gameStats.times)
        maxScore.text = String(gameStats.maxScore)

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var timesNumber: UILabel!
    @IBOutlet weak var maxScore: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
