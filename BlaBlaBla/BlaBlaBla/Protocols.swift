//
//  WordsLoader.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 06/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

protocol WordListProtocol {
    static var countries: [String] {get}
    static var places: [String] {get}
    static var adjectives: [String] {get}
    static var animals: [String] {get}
    static var objects: [String] {get}
}

//MARKK:- SENTENCE MAKER
protocol SentenceGeneratorProtocol {
    static func random() -> String
    typealias wl = WordListProtocol
}
extension SentenceMaker{
    ///Private init
    private init(){self.init()}
}
