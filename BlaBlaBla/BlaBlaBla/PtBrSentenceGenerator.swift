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
        //randomAdjective(), randomInCountry(), ,,randomAdjectiveLike()
        return [randomBeingStart(addAdjective: true), randomAtPlace(addCountry: true),randomBeingInCountry(), randomBeingInPlace(), randomBeingWithObject(), randomBeingWithObject(),randomCountryWithAnimal(),randomPlaceWith()].random
    }
    
    //MARK:- sentence generator
    //MARK: you are an being...
    ///Returns setence for "you are an 'being'", if you do not pass on argument it will get an random being
    open static func randomBeingStart(_ being: String? = nil, addAdjective: Bool? = nil) -> String {
        let being = being ?? animalWithRandomAdjective(addRandomAdjective: addAdjective)
        return "Você é ".concat(with: being).capitalizingFirstLetter()
    }
 
    open static func randomBeingInCountry(being: String? = nil, country: String? = nil) -> String {
        let str = ["e está", "e mora"].random.concat(with: country ?? wordList.countries.random)
        return randomBeingStart(being).concat(with: str).capitalizingFirstLetter()
    }
    
    open static func randomBeingInPlace(being: String? = nil, place: String? = nil) -> String {
        let str = ["em", "indo para", "saindo de"].random.concat(with: place ?? placeFromCountry())
        return randomBeingStart(being).concat(with: str).capitalizingFirstLetter()
    }
    
    open static func randomBeingWithObject(being: String? = nil, object: String? = nil) -> String{
        let str = ["e está segurando", "e está mordendo", "com", " olhando para"].random.concat(with: object ?? wordList.objects.random)
        return randomBeingStart(being).concat(with: str).capitalizingFirstLetter()
    }
    
    
    //MARK: you are at...
    open static func randomInCountry(_ country: String? = nil) -> String{
        return "Você está".concat(with: country ?? wordList.countries.random).capitalizingFirstLetter()
    }
    open static func randomAtPlace(_ place: String? = nil, addCountry: Bool? = nil) -> String{
        return "Você está em".concat(with: place ?? placeFromCountry(addCountry: addCountry ?? [true, false].random)).capitalizingFirstLetter()
    }
    open static func randomAdjective(_ adjective: String? = nil) -> String{
        return "Você \(["está", "é"].random)".concat(with: adjective ?? wordList.adjectives.random).capitalizingFirstLetter()
    }
    open static func randomAdjectiveLike(adjective: String? = nil, likeBeing: String? = nil) -> String{
        return randomAdjective(adjective).concat(with: "como").concat(with: likeBeing ?? wordList.animals.random).capitalizingFirstLetter()
    }
    open static func randomCountryWithAnimal(country: String? = nil, animal: String? = nil) -> String{
        return randomInCountry(country).concat(with: ["com", "acompanhando", "vigiando", "observando"].random).concat(with: animal ?? animalWithRandomAdjective()).capitalizingFirstLetter()
    }
    open static func randomPlaceWith(place: String? = nil, with thing: String? = nil) -> String{
        return randomAtPlace().concat(with: ["com", "olhando", "vigiando", "observadno"].random
            ).concat(with: thing ?? [animalWithRandomAdjective(), wordList.objects.random].random).capitalizingFirstLetter()
    }
   

    
    
    //MARK:- usefull
    static func animalWithRandomAdjective(addRandomAdjective add: Bool? = nil)-> String{
        return beingWithRandomAdjective(being: wordList.animals.random, addAdjective: add ?? [true,false].random)
    }
    static var objectWithAdjective: String{
        return beingWithRandomAdjective(being: wordList.objects.random, addAdjective: [true,false].random)
    }
    
    static func beingWithRandomAdjective(being: String? = nil, adjective: String? = nil, addAdjective: Bool)-> String{
        let being = being ?? [wordList.animals.random, wordList.objects.random].random
        
        if addAdjective {
            let adj = gender(fix: adjective ?? wordList.adjectives.random, based: being)
            return being.concat(with: adj)
        }
        
        return being
    }
    
    static func placeFromCountry(place: String? = nil, country: String? = nil, addCountry: Bool = true)-> String{
        let str = place ?? wordList.places.random
        
        if addCountry {
            let country = "d" + (country ?? wordList.countries.random).trimmingCharacters(in: .whitespaces).dropFirst()
            return str.concat(with: country)
        }
        
        return str
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

