//
//  CardListViewController.swift
//  Test_app_1
//
//  Created by Aaron Musa on 17/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import UIKit

class CardListViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var cardTableView: UITableView!
    var cardModel:CardModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cardTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let cards = self.cardModel?.cardOne.count else {
            return 0
        }
        return cards
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "Card Cell", for: indexPath) as! CardListTableViewCell
        tableCell.cardLabel.text = String(describing: (self.cardModel?.cardOne[indexPath.row])!) + "," + String(describing: (self.cardModel?.cardTwo[indexPath.row])!)
        return tableCell
    }

}
