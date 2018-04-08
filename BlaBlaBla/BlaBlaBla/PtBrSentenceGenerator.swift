//
//  PtBrSentenceGenerator.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 08/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

class PtBrSentenceGenerator: SentenceMaker {
    fileprivate static var wordList: WordList = PtBrWordList()
    
    open static func random() -> String {
        return [""].random
    }
    
    //MARK:- sentence generator
    //MARK: start with animal
    open static func youAreAnAnimal() -> String {
        return "Você é ".concat(with: animalWithCaracteristic).capitalizingFirstLetter()
    }
    
    open static func animalInCountry() -> String {
        let country = ["e está", "e mora"].random.concat(with: wordList.countries.random)
        return youAreAnAnimal().concat(with: country).capitalizingFirstLetter()
    }
    
    open static func animalInPlace() -> String {
        let place = ["em", "indo para", "saindo de"].random.concat(with: wordList.places.random)
        return youAreAnAnimal().concat(with: place).capitalizingFirstLetter()
    }
    
    open static func animalWithObject() -> String{
        let obj = ["e está segurando", "e está mordendo", "com", "e está fazendo", " olhando para"].random.concat(with: wordList.objects.random)
        return youAreAnAnimal().concat(with: obj).capitalizingFirstLetter()
    }
    
    open static func animalInPlaceFromCoutry() -> String {
        let country = "d" + wordList.countries.random.trimmingCharacters(in: .whitespaces).dropFirst()
        return animalInPlace().concat(with: country).capitalizingFirstLetter()
    }
    
    //MARK:- usefull
    static var animalWithCaracteristic: String{
        let animal = wordList.animals.random
        if [true,false].random {
            let adjective = gender(fix: wordList.adjectives.random, based: animal)
            return animal.concat(with: adjective)
        }
        return animal
    }
    
    fileprivate static func startWithUma(str: String)-> Bool{
        return str.split(separator: " ").contains("uma")
    }
    
    fileprivate static func gender(fix: String, based: String) -> String{
        let lastLetter = fix.lowercased().trimmingCharacters(in: .whitespaces).last
        guard lastLetter == "a" || lastLetter == "o" else{
            return fix
        }
        
        let adjective = fix.dropLast()
        if startWithUma(str: based){ //é feminino
            return adjective + "a"
        }else{//masculino
            return adjective + "o"
        }
    }
    
    
    private init(){}
    
}

