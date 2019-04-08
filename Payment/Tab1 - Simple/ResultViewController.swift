//
//  ResultViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 7..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var paramresult :Double = 0
    var paramMeetingTitle:String = ""
    var paramPaymentInt: Int = 0
    var paramNumInt:Int = 0
    
    
    override func viewDidLoad() {
        resultLabel.numberOfLines = 0
        let resultText = "모임 이름 : \(paramMeetingTitle)에 대한 결과입니다. \n 총액: \(paramPaymentInt)원 \n 참여인원: \(paramNumInt)명 \n 정산 결과: \(Int(paramresult))원"
        
        
        self.resultLabel.text = resultText
 
    }
}
