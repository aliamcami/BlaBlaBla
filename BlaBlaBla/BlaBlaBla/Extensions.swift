//
//  Extensions.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 06/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

extension Array {
    var random: Element {
        precondition(!isEmpty)
        return self[Int.random(max: count - 1)]
    }
}


extension Int {
    static func random(min: Int = 0, max: Int) -> Int {
        precondition(min >= 0 && min <= max)
        return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
    }
}

extension String{
    ///Concatenate two strings removing all aditional space, also adding a whitespace between strings
    func concat(with str : String) -> String{
        return  self.trimmingCharacters(in: CharacterSet.whitespaces) + " " + str.trimmingCharacters(in: CharacterSet.whitespaces)
    }
    
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst().lowercased()
    }

}

