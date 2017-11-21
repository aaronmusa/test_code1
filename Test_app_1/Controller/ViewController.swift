//
//  ViewController.swift
//  Test_app_1
//
//  Created by Aaron Musa on 16/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

   
    @IBOutlet weak var cardOne: UILabel!
    @IBOutlet weak var cardTwo: UILabel!
    var firstCards:[String] = []
    var secondCards:[String] = []
    var cardModel:CardModel?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let word = "TEST"
        var reversed = ""
        for char in word.characters {
            reversed.insert(char, at: reversed.startIndex)
        }
        print(reversed)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func randomBtnClicked(_ sender: UIButton) {
        let firstCard = setRandomCard()
        var secondCard = setRandomCard()
        if secondCard == firstCard {
            secondCard = setRandomCard()
        }
        cardOne.text = firstCard
        firstCards.append(firstCard)
        cardTwo.text = secondCard
        secondCards.append(secondCard)
        self.cardModel = CardModel(firstCard:firstCards,secondCard:secondCards)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func listBtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Go to Card List", sender: self.cardModel)
    }
    
}

private extension ViewController {
    func setRandomCard() -> String{
        let (cardNumber,cardSymbol) = getRandomCard()
        return cardNumber+cardSymbol
    }
    func shuffleCards() -> [String] {
        var test = ["hi","ho","ji"]
        
        return test.shuffle()
    }
//    func reverseString(word:String) -> String {
//        let ggg = word.reversed()
//    }
}

