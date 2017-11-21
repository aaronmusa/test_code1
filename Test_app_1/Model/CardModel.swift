//
//  CardModel.swift
//  Test_app_1
//
//  Created by Aaron Musa on 17/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit

class CardModel: NSObject {
    var cardOne:[String] = []
    var cardTwo:[String] = []
    
    override init(){
        super.init()
    }
    
    init(firstCard:[String],secondCard:[String]){
        self.cardOne = firstCard
        self.cardTwo = secondCard
    }
}
