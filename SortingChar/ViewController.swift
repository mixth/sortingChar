//
//  ViewController.swift
//  SortingChar
//
//  Created by Narat Suchartsunthorn on 7/30/16.
//  Copyright © 2016 mixth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sort(_ sender: UIButton) {
        let sortController = SortController(controller: self)
        sortController.sort(self.inputField.text!)
    }

}

extension ViewController: SortControllerProtocol {

    func displayResult(result: String) {
        self.resultLabel.text = result
    }

    func displayEmpty() {
        self.resultLabel.text = ""
    }
}
