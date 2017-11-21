//
//  CardListTableViewCell.swift
//  Test_app_1
//
//  Created by Aaron Musa on 17/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit

class CardListTableViewCell: UITableViewCell {

    @IBOutlet weak var cardLabel: UILabel!
    var cardModel:CardModel?
    func setContents(){
        for firstCard in (cardModel?.cardOne)! {
            cardLabel.text = firstCard
        }
    }

}
