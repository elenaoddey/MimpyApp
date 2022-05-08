//
//  MainPage.swift
//  Mimpy - Track your dreams
//
//  Created by Elena Oddey Goretti on 28/04/22.
//
import UIKit
import FSCalendar

class SecondPage: UIViewController,FSCalendarDelegate, FSCalendarDataSource, DataEnteredDelegate, SecondDataEnteredDelegate {

    var recievedName: String?
    var formatter = DateFormatter()
    var calendar: FSCalendar!
//    var recievedTitle: String?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = recievedName
//        titleLabel.text = recievedTitle
//       This is calendar code
        calendar = FSCalendar(frame: CGRect(x: 0.0, y: 170.0, width: self.view.frame.size.width, height: 300.0))
        calendar.scrollDirection = .horizontal
        self.view.addSubview(calendar)
        
        calendar.dataSource = self
        calendar.delegate = self
        
        calendar.appearance.titleFont = UIFont.systemFont(ofSize: 17.0)
        calendar.appearance.headerTitleFont = UIFont.boldSystemFont(ofSize: 18.0)
        calendar.appearance.weekdayFont = UIFont.boldSystemFont(ofSize: 16.0)
        
        calendar.appearance.todayColor = .purple
        calendar.appearance.headerTitleColor = .black
        calendar.appearance.weekdayTextColor = .darkGray
        calendar.appearance.selectionColor = .systemOrange
        
        // Do any additional setup after loading the view.
        }
    
    // MARK: - DataSource
    

    
    // MARK: - Send Title Back
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopUp", let titlePopUp = segue.destination as? TitlePopUpView {
              titlePopUp.delegate = self
          }
        else if segue.identifier == "showDesc", let descModal = segue.destination as? DescriptionView {
            descModal.delegate = self
        }
      }
    func userDidEnterInformation(info: String) {
        titleLabel.text = info
        navigationController?.popViewController(animated: true)
        }
    func userDidEnterSecondInformation(info: String) {
        descLabel.text = info
        navigationController?.popViewController(animated: true)
    }

    // MARK: - Send Desc Back
    
    
    // MARK: - Delegate
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        formatter.dateFormat = "dd-MMM-yyy"
        print("Date Selected == \(formatter.string(from: date))")
    }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
