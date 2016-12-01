//
//  LocationModel.swift
//  IOU_test
//
//  Created by Richard Lynch on 16/06/2016.
//  Copyright © 2016 Lynch. All rights reserved.
//

import Foundation

class LocationModel: NSObject {
    
    //properties
    
    var payer: String?
    var payee: String?
    var amount: String?
    var desc: String?
    var date_payed: String?
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(payer: String, payee: String,amount: String, desc: String, date_payed: String) {
        
        self.payer = payer
        self.payee = payee
        self.amount = amount
        self.desc = desc
        self.date_payed = date_payed
        
    }
    
    
    //prints object's current state
    
    override var description: String {
        return "Payer: \(payer), Payee: \(payee),  Amount: \(amount), Description: \(desc), Date: \(date_payed)"
    }
}
