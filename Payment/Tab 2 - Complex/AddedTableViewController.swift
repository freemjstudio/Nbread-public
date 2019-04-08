//
//  AddedTableViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 10..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit

class GroupVO {
    var paramObject:String = ""
    var paramPaymentObj:Int = 0
    var payDict:[String:Bool] = ["사람 1":false]
}

class GroupCell: UITableViewCell {
    let gvo = GroupVO()
    @IBOutlet weak var person: UITextField!
    @IBAction func btnTapped(_ sender: UIButton) {
        if sender.isSelected {
            gvo.payDict["사람 1"] = true
            
            //버튼 그림 바꾸는거 넣기
        }
    }
}

class AddedTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let gvo = GroupVO()
    @IBOutlet weak var tableView: UITableView!
    
    /*
    var paramObject:String = ""
    var paramPaymentObj:Int = 0
    var payBool:Bool = false
    var payDict:[String:Bool] = ["사람 1":false]
 */
    typealias payType = (obiect: String, paymentObj: String, payDic: [String:Bool])
    //var payTuple:payType = (object: "", paymentObj: "", payBool: [false])
    var countMember:Int = 1
    
    @IBOutlet weak var object: UITextField!
    @IBOutlet weak var paymentObj: UITextField!
    
    
    
    @IBAction func addPerson(_ sender: Any) {
        insertNewPerson()
        countMember += 1
    }
    
    func insertNewPerson() {
        gvo.payDict["사람 \(countMember)"] = false
        let indexPath = IndexPath(row: gvo.payDict.count - 1, section: 0)
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        view.endEditing(true)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.gvo.payDict.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "payDictCell", for : indexPath)
        
        return cell
    } 
    
    
    // 저장하기 버튼 :: 값전달
    @IBAction func save(_ sender: Any) {
        guard let cvc = self.storyboard?.instantiateViewController(withIdentifier: "CVC") else {
            return
        }
        /*
         //presentingViewController 속성을 통해 이전 화면 객체를 읽어온 다음, ViewController 타입으로 캐스팅한다.
         let preVC = self.presentingViewController
         guard let vc = preVC as? ViewController else {
         return
         }
 
 */
        
        
        
    }
    
 }


