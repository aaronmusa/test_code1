//
//  CoreDataManager.swift
//  Test_app_1
//
//  Created by Aaron Musa on 19/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit
import SugarRecord

class CoreDataManager: NSObject {
    static let shared = CoreDataManager()
    // Initializing CoreDataDefaultStorage
    lazy var db: CoreDataDefaultStorage = {
        let store = CoreDataStore.named("db.test_app")
        let bundle = Bundle(for: self.classForCoder)
        let model = CoreDataObjectModel.merged([bundle])
        let defaultStorage = try! CoreDataDefaultStorage(store: store, model: model)
        return defaultStorage
    }()
    
//    func fetchWebServiceData(webService:WebServiceModel) -> WebServiceModel {
//        let webServiceData = try?
//        return webService
//    }
    func insertWenServiceData(webServiceData:WebServiceModel) {
        try! self.db.operation({ (context,save ) -> Void in
            let webServiceObject:ApiTest? = try! context.request(ApiTest.self).filtered(with: "id", equalTo: String(describing:webServiceData.id)).fetch().first
            
            let isInsert = webServiceObject == nil
            let apiTest = isInsert ? try! context.new() : webServiceObject!
            
            apiTest.id = Int64(webServiceData.id!)
            apiTest.name = webServiceObject?.name
            apiTest.greeting = webServiceData.greeting
            save()
        })
    }
    
    func fetchApiTest() -> [WebServiceModel]{
        let apiTestData = try! self.db.fetch(FetchRequest<ApiTest>().sorted(with: "id", ascending: true)).map(WebServiceModel.init)
        return apiTestData
    }
}
