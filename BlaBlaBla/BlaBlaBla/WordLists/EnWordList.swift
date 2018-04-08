//
//  En-WordList.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 06/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

///Default wordList - English
class EnWordList: WordList {
    var countries: [String]{
        return "teste, mais um, outro".split(separator: ",").map(String.init)
    }
    
    var places: [String]{
        return "teste, mais um, outro".split(separator: ",").map(String.init)
    }
    
    var adjectives: [String]{
        return "teste, mais um, outro".split(separator: ",").map(String.init)
    }
    
    var animals: [String]{
        return "teste, mais um, outro".split(separator: ",").map(String.init)
    }
    
    var objects: [String]{
        return "teste, mais um, outro".split(separator: ",").map(String.init)
    }
    

}
