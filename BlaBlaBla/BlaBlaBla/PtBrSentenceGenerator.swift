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
        return [randomBeingStart(), randomBeingInCountry(), randomBeingInPlace(), randomBeingWithObject(), randomBeingWithObject(), beingInPlaceFromCountry()].random
    }
    
    //MARK:- sentence generator
    //MARK: general
    ///Returns setence for "you are an 'being'", if you do not pass on argument it will get an random being
    open static func randomBeingStart(_ being: String? = nil) -> String {
        let being = being ?? animalWithAdjective
        return "Você é ".concat(with: being).capitalizingFirstLetter()
    }
 
    open static func randomBeingInCountry(being: String? = nil, country: String? = nil) -> String {
        let str = ["e está", "e mora"].random.concat(with: country ?? wordList.countries.random)
        return randomBeingStart(being).concat(with: str).capitalizingFirstLetter()
    }
    
    open static func randomBeingInPlace(being: String? = nil, place: String? = nil) -> String {
        let str = ["em", "indo para", "saindo de"].random.concat(with: place ?? wordList.places.random)
        return randomBeingStart(being).concat(with: str).capitalizingFirstLetter()
    }
    
    open static func randomBeingWithObject(being: String? = nil, object: String? = nil) -> String{
        let str = ["e está segurando", "e está mordendo", "com", "e está fazendo", " olhando para"].random.concat(with: object ?? wordList.objects.random)
        return randomBeingStart(being).concat(with: str).capitalizingFirstLetter()
    }
    
    open static func beingInPlaceFromCountry(being:String? = nil, place: String? = nil, from: String? = nil) -> String {
        var country = from ?? wordList.countries.random
        country = "d" + country.trimmingCharacters(in: .whitespaces).dropFirst()
        return randomBeingInPlace(being: being, place: place).concat(with: country).capitalizingFirstLetter()
    }
    
    //MARK:- usefull
    static var animalWithAdjective: String{
        return beingWithAdjective(being: wordList.animals.random)
    }
    static var objectWithAdjective: String{
        return beingWithAdjective(being: wordList.objects.random)
    }
    
    static func beingWithAdjective(being: String? = nil, adjective: String? = nil)-> String{
        let being = being ?? [wordList.animals.random, wordList.objects.random].random
        
        if [true,false].random {
            let adj = gender(fix: adjective ?? wordList.adjectives.random, based: being)
            return being.concat(with: adj)
        }
        
        return being
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

