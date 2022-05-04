//
//  ConfigViewController.swift
//  Labo 1
//
//  Created by MAC on 2022-04-30.
//  Copyright © 2022 Ahuntsic. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var playerName: UILabel!
    @IBAction func dismissKeyBoard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        playerName.text = GameConfig.sharedInstance.name
        // Do any additional setup after loading the view.
    }
    @IBAction func validate(_ sender: Any) {
        createPlayer()
    }
    private func createPlayer() {
        let name = nameTextField.text
        GameConfig.sharedInstance.name = name
        playerName.text = name
    }
}

extension ConfigViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.4,animations: {
            self.view.frame.origin.y = -200
        })
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.2,animations: {
            self.view.frame.origin.y = 0
        })
    }
}
