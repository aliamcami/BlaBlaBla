//
//  PtBrSentenceGenerator.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 08/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//



public class PtBrSentenceGenerator: SentenceGeneratorProtocol {
    open static let all = [rdmAnimal,rdmInPlace, rdmAnimalAdjective, rdmInCountry, rdmWithObject, rdmAnimalWithObject, rdmPlaceWithAnimal, rdmBeingAtPlace, rdmActionObject, rdmWithAnimal, rdmActionObjectWithAnimal]
    
    
    ///Most importante function: Randomly selects a fucntion that generates a random sentence
    open static func random() -> String {
        return Array(all.dropFirst(2)).random()
    }
    
    //MARK:- random sentence generator
    //MARK: VOCÊ É...
    //Every functions that retuned sentence start with "Você é"
    
    fileprivate static let vcEh = "Você é"
    
    ///Animal only. Ex.: Você é um macaco
    open static func rdmAnimal() ->  String{
        return vcEh.concat(with: animal).capitalizingFirstLetter()
    }
    
    ///Animal with caracteristic. Ex.: Você é um macaco feliz
    open static func rdmAnimalAdjective() -> String {
        return vcEh.concat(with: rdmAnimalWithAdjective).capitalizingFirstLetter()
    }
 
    ///Animal in a country
    open static func rdmInCountry() ->  String{
        let verb = ["e está", "e mora"].random
        let start = [rdmAnimal, rdmAnimalAdjective].random
        return start().concat(with: verb, country).capitalizingFirstLetter()
    }
    
    ///animal at a Place from rdm Place/-
    open static func rdmInPlace() ->  String{
        let start = [rdmAnimal(), rdmAnimalAdjective(), vcEsta].random
        return start.concat(with: rdmPlaceRdmCountry).capitalizingFirstLetter()
    }
    
    ///Returns a random sentence with animal doing some action with an object, can be in a specific place or not.
    open static func rdmWithObject() ->  String{
        return rdmAnimalAdjective().concat(with: "e está", rdmVerbObj).capitalizingFirstLetter()
    }
    
    ///Returns animal doing something with object
    open static func rdmAnimalWithObject() ->  String{
        return rdmAnimalAdjective().concat(with: rdmVerbObj).capitalizingFirstLetter()
    }
    
    
    //MARK: VOCÊ ESTÁ...
    //Every functions that retuned sentence start with "Você está"
    ///Returns country only
    fileprivate static var vcEsta = "Você está"
    
    ///"You are with an ANIMAL/Object"
    open static func rdmWithAnimal() ->  String{
        return vcEsta.concat(with: rdmVerbAnimalRdmAdj).capitalizingFirstLetter()
    }
    
    ///Returns you doing something with an rdm obj
    open static func rdmActionObject() ->  String{
        return vcEsta.concat(with: rdmVerbObj).capitalizingFirstLetter()
    }
    
    ///Returns rdmActionObject plus an animal
    open static func rdmActionObjectWithAnimal() ->  String{
        let verb = ["dança", "pensa em", "chama", "escolhe", "sonha com", "segue", "espera", "beija"].random
        return rdmActionObject().concat(with: "enquanto", verb, rdmAnimalRdmAdj).capitalizingFirstLetter()
        
    }
    
    ///Returns someone somewhere
    open static func rdmBeingAtPlace() ->  String{
        let start = [rdmActionObject, rdmWithAnimal].random
        return start().concat(with: rdmVerbPlace).capitalizingFirstLetter()
    }
    
    ///Returns you somewhere with an animal
    open static func rdmPlaceWithAnimal() ->  String{
        return vcEsta.concat(with: rdmPlaceRdmCountry, "com", animal).capitalizingFirstLetter()
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
    static var place:  String{
        return wl.places.random
    }
    static var adjective:  String{
        return wl.adjectives.random
    }
    static var animal:  String{
        return wl.animals.random
    }
    static var object:  String{
        return wl.objects.random
    }
    
    //MARK: Random variable compositions
    ///Returns an animal with random adjective
    fileprivate static var rdmAnimalWithAdjective:  String{
        let a = animal
        return a.concat(with: gender(fix: adjective, based: a))
    }
    ///Returns an animal with or without adjective, randomly chosen
    fileprivate static var rdmAnimalRdmAdj: String{
        return [animal, rdmAnimalWithAdjective].random
    }
    
    ///Returns a random place from an random country
    fileprivate static var rdmPlaceFromCountry:  String{
        let ctry = "d" + country.trimmingCharacters(in: .whitespaces).dropFirst()
        return rdmVerbPlace.concat(with: ctry)
    }
    
    ///Returns a random place from or not a country, randomly chosen
    fileprivate static var rdmPlaceRdmCountry:  String{
        return [rdmVerbPlace, rdmPlaceFromCountry].random
    }
    
    ///Returns place with verb
    fileprivate static var rdmVerbPlace:  String{
        let verb = ["em", "indo para", "saindo de", "limpando"].random
        return verb.concat(with: place)
    }
    
    ///Returns an objects with a verb that make sense
    fileprivate static var rdmVerbObj: String{
        let verb = ["segurando", "olhando", "observando", "destruindo", "com", "mordendo", "beijando", "sonhando com", "cortando"].random
        return verb.concat(with: object)
    }
    
    ///Retuns a verb and animal
    fileprivate static var rdmVerbAnimalRdmAdj:  String{
        let verb = ["com","acompanhando", "vigiando", "olhando", "observando", "admirando", "namorando", "gostando", "doando", "escutando", "ajudando"].random
        return verb.concat(with: rdmAnimalRdmAdj)
    }
    
}

fileprivate extension String{
    ///verify that a string starts with something
    fileprivate func startWith(_ start: String)-> Bool{
        return split(separator: " ").contains(Substring.init(start))
    }
}

