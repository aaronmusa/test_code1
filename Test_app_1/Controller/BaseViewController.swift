//
//  BaseViewCOntrollerViewController.swift
//  Test_app_1
//
//  Created by Aaron Musa on 16/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    let cardNumber:[String] = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
    let cardSymbol:[String] = ["D","S","C","H"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is CardListViewController {
            let cardListViewController = segue.destination as? CardListViewController
            cardListViewController?.cardModel = sender as? CardModel
        }
    }

}

extension BaseViewController {
    func getRandomCard() -> (String,String) {
        let randomedCard = (cardNumber.getRandomElement() , cardSymbol.getRandomElement())
       return randomedCard
    }
}
