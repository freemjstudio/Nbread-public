//
//  ViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 7..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var meetingTitle: UITextField!
    @IBOutlet weak var payment: UITextField!
    @IBOutlet weak var peopleNum: UILabel!
    @IBOutlet weak var numStepper: UIStepper!
    var resultPay:Double = 0
    var resultFinal:Double = 0
    
    @IBAction func numStepper(_ sender: UIStepper) {
        
        let value = Int(sender.value)
        self.peopleNum.text = "\(value)명" //이게 인원추가 버튼에 이어진것?
 /*
        var number = 0
        number = Int(sender.value)
        peopleNum.text = String(number)
        */
    }
    
    
    @IBAction func calculate(_ sender: UIBarButtonItem) {
        guard let paymentInt = Double(payment.text!) else {
            return
        }
        guard let peopleNumInt:Int = Int(self.numStepper!.value) else {
            return
        }
        resultPay = paymentInt/Double(peopleNumInt)
        resultFinal = resultPay.rounded(.toNearestOrAwayFromZero)
        
        print(resultPay)
        print(resultFinal)
        
        
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        rvc.paramresult = self.resultFinal
        rvc.paramMeetingTitle = self.meetingTitle.text!
        rvc.paramPaymentInt = Int(self.payment.text!) ?? 0
        rvc.paramNumInt = Int(self.numStepper!.value)
        
        
        
    self.navigationController?.pushViewController(rvc, animated: true)
    }
 
    
 
    
}
