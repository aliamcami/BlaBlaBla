//
//  WordsLoader.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 06/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

protocol WordList {
    var countries: [String] {get}
    var places: [String] {get}
    var adjectives: [String] {get}
    var animals: [String] {get}
    var objects: [String] {get}
}

protocol SentenceMaker {
    static func random() -> String
}
