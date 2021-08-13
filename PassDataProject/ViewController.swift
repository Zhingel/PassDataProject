//
//  ViewController.swift
//  PassDataProject
//
//  Created by Стас Жингель on 12.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logonTextfield: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBAction func unwindToMainScreen(segue:UIStoryboardSegue){
        guard segue.identifier == "unwindSegue" else {return}
        guard let dvc = segue.source as? SecondViewController else {return}
        resultLabel.text = dvc.nameLabel.text
    }
    @IBAction func loginButton(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = logonTextfield.text
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

