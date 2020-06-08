//
//  ViewController.swift
//  DatePicker
//
//  Created by 維衣 on 2020/6/2.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birLabel: UILabel!
    @IBOutlet weak var talentsLabel: UILabel!
    @IBOutlet weak var lifecodeLabel: UILabel!

    @IBOutlet weak var datePicker: UIDatePicker!
    
//    let endDateTime = formatter.dateFromString(datePickerValue())
    
    @IBOutlet var numButtons: [UIButton]!
        var timeString = ""
//     var dayNumber: Int?
//    var birNumber: String?
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePicker.isHidden = false
    }
    
    @IBAction func datePickerValue(_ sender: UIDatePicker) {

//        birthday = datePicker.date
        let dateFormatter = DateFormatter()
//        timeString = dateFormatter.string(from: Date())
        dateFormatter.dateFormat = "YYYY.MM.dd"
        let birthday = dateFormatter.string(from: datePicker.date)
        birLabel.text = "生日日期： \(birthday)"
        
        
        var sum: Int = 0
       
        for day in birthday{
            let dayNumber = Int(String(day))
            if dayNumber != nil{
            sum = sum + dayNumber!
            talentsLabel.text = "天賦數：\(sum)"
            }
        }
//            if sum > 10 {
//                let lifeString = Int(String(sum))
//                sum = sum + lifeString!
//                }
//            lifecodeLabel.text = "生命靈數：\(sum)"
//            }
//        calLifeNumber()
    }

//    //計算主命數
//    func calLifeNumber() {
//        var sum = 0
//        for day in lifecodeLabel.text! {
//            sum = sum + Int(String(day))!
//            lifecodeLabel.text = "生命靈數：\(sum)"
//        }
//    }
    
    
}
    
    
    
    


