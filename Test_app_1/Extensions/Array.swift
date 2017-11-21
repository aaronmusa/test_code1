//
//  Array.swift
//  Test_app_1
//
//  Created by Aaron Musa on 16/11/2017.
//  Copyright © 2017 Aaron Musa. All rights reserved.
//

import Foundation

extension Array {
    func getRandomElement() -> String {
        let randomIndex = Int(arc4random_uniform(UInt32(self.count)))
        return self[randomIndex] as! String
    }
    mutating func shuffle()->Array {
        indices.lazy.dropLast().forEach {
            swapAt($0, Int(arc4random_uniform(UInt32(self.count - $0))) + $0)
        }
        return self
    }
}
