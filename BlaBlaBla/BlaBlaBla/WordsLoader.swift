//
//  WordsLoader.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 06/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

class WordsLoader {
    ///States, Countries or Continents
    static let countries = NSLocalizedString("countries", comment: "").split(separator: ",")
    
    ///Places
    static let places = NSLocalizedString("places", comment: "").split(separator: ",")
    
    ///Adjectives or states a person can be
    static let adjectives = NSLocalizedString("adjectives", comment: "").split(separator: ",")
    
    ///Animals or magical creatures
    static let animals = NSLocalizedString("animals", comment: "").split(separator: ",")
    
    ///Objects
    static let objects = NSLocalizedString("objects", comment: "").split(separator: ",")
    
    
    private init() {}
}
