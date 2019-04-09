//
//  ComplexViewController.swift
//  Payment
//
//  Created by CAUAD15 on 2018. 8. 10..
//  Copyright © 2018년 CAUAD15. All rights reserved.
//

import UIKit



class ComplexViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    //세이브 버튼으로 값전달된거 받는 코드 class 객체를 셀 수 있나?
    var gvoSet = GroupVO()
    var baramObject:String = ""
    var baramPayment:Int = 0
    var baramPaymentStr = "\(baramPayment)"
    
    
    //받아줄 변수 만들기 (object, 금액, bool값 어레이 등)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  baramObject.count//ADDTABLE에서 저장된 값의 세트 개수를 세면 될 것임.
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ObjectCell")
        cell?.textLabel?.text = baramObject//전달된 오브젝트 : 모임이름
        cell?.detailTextLabel?.text = baramPayment//전달된 오브젝트 : 갸격
    }
    
    
    @IBOutlet weak var groupName: UITextField!
   
    //정산하기 버튼
    @IBAction func payBtn(_ sender: Any) {
        
    }
    
    // 
    @IBAction func addBtn(_ sender: Any) {
        
    }
    
}

