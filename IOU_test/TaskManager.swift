//
//  TaskManager.swift
//  IOU_test
//
//  Created by Richard Lynch on 16/06/2016.
//  Copyright © 2016 Lynch. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct payment{
    var payer = "Un-named"
    var payee = "Un-named"
    var amount = 0.0
    var desc = "Un-Described"
    var date = "Un-Dated"
    
}

class TaskManager: NSObject {
    
    var payments = [payment]()
    
    func addPayment(payer: String, payee: String, amount: Double, desc: String, date: String){
        payments.append(payment(payer: payer, payee: payee, amount: amount, desc: desc, date: date))
        
    }
    

}
