//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Стас Жингель on 12.08.2021.
//

import UIKit

class SecondViewController: UIViewController {
    var login: String?
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func gobackAction(_ sender: UIButton) {
       performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = login
    }
}
