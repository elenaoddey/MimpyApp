//
//  DescriptionView.swift
//  Mimpy - Track your dreams
//
//  Created by Elena Oddey Goretti on 04/05/22.
//

import UIKit
protocol SecondDataEnteredDelegate: AnyObject {
    func userDidEnterSecondInformation(info: String)
}

class DescriptionView: UIViewController {


    @IBOutlet weak var descField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    weak var delegate: SecondDataEnteredDelegate?
    

    @IBAction func finishDesc(_ sender: AnyObject) {
        // call this method on whichever class implements our delegate protocol (the first view controller)
        delegate?.userDidEnterSecondInformation(info: descField.text ?? "")
    }
    
    @IBAction func pressBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
