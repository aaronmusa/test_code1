//
//  WebServiceModel.swift
//  Test_app_1
//
//  Created by Aaron Musa on 19/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit

class WebServiceModel: NSObject {
    var id:Int?
    var name:String?
    var greeting:String?
    
    override init(){
        super.init()
    }
    
    init(json:[String:AnyObject]){
        self.id = Int(json["id"] as! String)
        self.name = json["name"] as? String
        self.greeting = json["greeting"] as? String
    }
    init(apiTest:ApiTest){
        self.name = apiTest.name
        self.greeting = apiTest.greeting
    }
}
