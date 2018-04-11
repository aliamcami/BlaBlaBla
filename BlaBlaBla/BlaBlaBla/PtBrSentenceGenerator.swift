//
//  PtBrSentenceGenerator.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 08/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

class PtBrSentenceGenerator: SentenceMaker {
    open static let all = [rdmAnimal,rdmAnimalRdmAdjective,rdmInCountry,rdmInPlace,rdmWithObject,rdmAnimalWithObject,rdmPlaceWithAnimal,rdmBeingAtPlace,rdmActionObject,rdmWithAnimal]
    
    
    ///Most importante function: Randomly selects a fucntion that generates a random sentence
    open static func random() -> String {
        //randomAdjective(), randomInCountry(), ,,randomAdjectiveLike()
        return all.random
    }
    
    //MARK:- random sentence generator
    //MARK: VOCÊ É...
    //Every functions that retuned sentence start with "Você é"
    
    fileprivate static let vcEh = "Você é"
    
    ///Animal only. Ex.: Você é um macaco
    open static var rdmAnimal: String {
        return vcEh.concat(with: animal).capitalizingFirstLetter()
    }
    ///Animal with caracteristic. Ex.: Você é um macaco feliz
    open static var rdmAnimalRdmAdjective: String {
        return vcEh.concat(with: rdmAnimalWithAdjective).capitalizingFirstLetter()
    }
 
    ///Animal in a country
    open static var rdmInCountry: String{
        let verb = ["e está", "e mora"].random
        let start = [rdmAnimal, rdmAnimalRdmAdjective].random
        return start.concat(with: verb.concat(with: country)).capitalizingFirstLetter()
    }
    
    ///animal at a Place from rdm Place/-
    open static var rdmInPlace: String {
        let start = [rdmAnimal, rdmAnimalRdmAdjective, vcEsta].random
        return start.concat(with: rdmPlaceRdmCountry).capitalizingFirstLetter()
    }
    
    ///Returns a random sentence with animal doing some action with an object, can be in a specific place or not.
    open static var rdmWithObject: String{
        let start = rdmAnimalRdmAdjective.concat(with: "e está")
        return start.concat(with: rdmVerbObj).capitalizingFirstLetter()
    }
    
    ///Returns animal doing something with object
    open static var rdmAnimalWithObject: String{
        return rdmAnimalRdmAdjective.concat(with: rdmVerbObj).capitalizingFirstLetter()
    }
    
    
    //MARK: VOCÊ ESTÁ...
    //Every functions that retuned sentence start with "Você está"
    ///Returns country only
    fileprivate static var vcEsta = "Você está"
    
    ///"You are with an ANIMAL/Object"
    open static var rdmWithAnimal: String{
        let verb = ["com", "olhando", "observando", "admirando"].random
        let start = vcEsta.concat(with: verb)
        return start.concat(with: rdmAnimalRdmAddAdjective).capitalizingFirstLetter()
    }
    
    ///Returns you doing something with an rdm obj
    open static var rdmActionObject: String{
        return vcEsta.concat(with: rdmVerbObj).capitalizingFirstLetter()
    }
    
    ///Returns someone somewhere
    open static var rdmBeingAtPlace: String{
        let start = [rdmActionObject, rdmWithAnimal].random
        return start.concat(with: rdmVerbPlace).capitalizingFirstLetter()
    }
    
    ///Returns you somewhere with an animal
    open static var rdmPlaceWithAnimal: String{
        let start = vcEsta.concat(with: rdmPlaceRdmCountry)
        let verb =  ["com", "acompanhando", "vigiando", "observando"].random
        let anml = verb.concat(with: rdmAnimalRdmAddAdjective)
        return start.concat(with: anml).capitalizingFirstLetter()
    }
    
    
    //MARK:- USEFULL
    ///Fix the gender of the word based on another word that starts with "uma/um"
    fileprivate static func gender(fix: String, based: String) -> String{
        let lastLetter = fix.lowercased().trimmingCharacters(in: .whitespaces).last
        
        //There is no need to fix if it does not end in a or o.
        guard lastLetter == "a" || lastLetter == "o" else{
            return fix
        }
        
        return fix.dropLast() + (based.startWith("uma") ? "a" : "o")
    }
    
    
    //MARK:- VARIABLES and typealias
    typealias wl = PtBrWordList
    static var country: String{
        return wl.countries.random
    }
    static var place: String{
        return wl.places.random
    }
    static var adjective: String{
        return wl.adjectives.random
    }
    static var animal: String{
        return wl.animals.random
    }
    static var object: String{
        return wl.objects.random
    }
    
    //MARK: Random variable compositions
    ///Returns an animal with random adjective
    static var rdmAnimalWithAdjective: String{
        let a = animal
        return a.concat(with: gender(fix: adjective, based: a))
    }
    ///Returns an animal with or without adjective, randomly chosen
    static var rdmAnimalRdmAddAdjective: String{
        return [animal, rdmAnimalWithAdjective].random
    }
    
    ///Returns place with verb
    fileprivate static var rdmVerbPlace: String{
        let verb = ["em", "indo para", "saindo de"].random
        return verb.concat(with: place)
    }
    
    ///Returns a random place from an random country
    static var rdmPlaceFromCountry: String{
        let ctry = "d" + country.trimmingCharacters(in: .whitespaces).dropFirst()
        return rdmVerbPlace.concat(with: ctry)
    }
    
    ///Returns a random place from or not a country, randomly chosen
    static var rdmPlaceRdmCountry: String{
        return [rdmVerbPlace, rdmPlaceFromCountry].random
    }
    
    ///Returns an objects with a verb that make sense
    fileprivate static var rdmVerbObj: String{
        let verb = ["segurando", "olhando", "observando", "destruindo", "com", "mordendo" ].random
        return verb.concat(with: object)
    }
    
}

fileprivate extension String{
    ///verify that a string starts with something
    fileprivate func startWith(_ start: String)-> Bool{
        return split(separator: " ").contains(Substring.init(start))
    }
}

