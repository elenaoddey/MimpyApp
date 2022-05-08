//
//  ViewController.swift
//  Mimpy - Track your dreams
//
//  Created by Elena Oddey Goretti on 27/04/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        
        performSegue(withIdentifier: "toMain", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as? SecondPage
        nextVC?.recievedName = nameField.text
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "toMain" {
//            let secondPage = segue.destination as! SecondPage
//
//            secondPage.recievedName = nameField.text
//        }
//        let nextPage = segue.destination as? SecondPage
//        nextPage?.recievedName = nameFieldValue
//    }
}

