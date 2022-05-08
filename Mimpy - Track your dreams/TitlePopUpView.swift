//
//  TitlePopUpView.swift
//  Mimpy - Track your dreams
//
//  Created by Elena Oddey Goretti on 03/05/22.
//

import UIKit

protocol DataEnteredDelegate: AnyObject {
    func userDidEnterInformation(info: String)
}
class TitlePopUpView: UIViewController {
//    var titleFieldValue : String?
    
    weak var delegate: DataEnteredDelegate?
    @IBOutlet weak var popUp: UIView!
    @IBOutlet weak var titleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popUp.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    @IBAction func finishTitle(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
        // call this method on whichever class implements our delegate protocol (the first view controller)
        delegate?.userDidEnterInformation(info: titleField.text ?? "")
//        titleFieldValue = titleField.text
//        performSegue(withIdentifier: "backtoSecPage", sender: nil)
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let backtoCal = segue.destination as? SecondPage
//        backtoCal?.recievedTitle = titleField.text
//        let backtoCal = segue.destination as? SecondPage
//        backtoCal?.recievedTitle = titleFieldValue
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
