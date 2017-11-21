//
//  NetworkManager.swift
//  Test_app_1
//
//  Created by Aaron Musa on 19/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit
import Alamofire

class NetworkManager: NSObject {
    static let shared = NetworkManager()
    let coreDataManager = CoreDataManager.shared
    let testURL = "http://echo.jsontest.com/name/Gail/greeting/HowAreYou/id/1"
    
    func request(url:String,method:HTTPMethod = .get,parameters:Parameters? = nil,completionHandler:@escaping(_ JSON: [String:AnyObject]?) -> Void){
        Alamofire.request(testURL, method: method, parameters: parameters).responseJSON{ response in
            let json = response.result.value as? [String:AnyObject]
            if json != nil {
                let apiTest = WebServiceModel(json:json!)
                self.coreDataManager.insertWenServiceData(webServiceData: apiTest)
            }
            
            completionHandler(json)
        }
    }
}
