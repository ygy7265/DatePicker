//
//  ViewController.swift
//  DatePicker
//
//  Created by D7703_19 on 2019. 4. 16..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTime: UILabel!
    
    @IBOutlet weak var datepic: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loadin정 the view, typically from a nib.// UI의 지역화(locatization)
        let locale = Locale(identifier: "ko_KO")
        datepic.locale = locale
        
        // DatePicker 모드 설정
        datepic.datePickerMode = UIDatePicker.Mode.time
    }

    @IBAction func changedate(_ sender: Any) {
        let selectData = datepic.date
        
        let formatter = DateFormatter()
        formatter.dateFormat = "a HH:mm "
        lblTime.text = formatter.string(from: selectData)
    }
    
}

