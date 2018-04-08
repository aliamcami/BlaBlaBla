//
//  SentenceGenerator.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 06/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

class EnSentenceGenerator: SentenceMaker {
    fileprivate static var wordList: WordList = EnWordList()
    
    static func random() -> String {
        return wordList.adjectives.random
    }
    
    private init(){}
    
}
