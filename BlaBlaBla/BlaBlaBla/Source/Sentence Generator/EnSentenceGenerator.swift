//
//  EnSentenceGenerator.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 11/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//



class EnSentenceGenerator: SentenceGeneratorProtocol {
    /*
     0 - You are in Lithuania
     1 - You are at the office from Slovakia
     2 - You are at the barber shop destroying a towel
     3 - You are worshipping a unsightly rabbit at the café
     4 - You are with a wet heron damaging a towel at the capital
     5 - You are sitting on a single bed with a camel in Philippines
     6 - You are flying on a plate in Croatia
     7 - You are kissing a short hydra in Georgia
     8 - You are seeing
     9 - You are a lion
     10 - You are orange at the barbecue restaurant
     11 - You are a short dragon at the gallery
     12 - You are a kind fish destroying a pad
     13 - You are a iguana selling a broom at the movies
     14 - You are drying a wardrobe
     15 - You are hugging a toothbrush with a dirty zebra
     16 - You are repairing a nervous raccoon
     17 - You are complaining to a tarantula that's repairing a radio
     18 - You are a raccoon from Iran
     */
   open static var all = [rdmAreVerb, rdmInCountry, rdmAtPlace, rdmAtPlaceWithObject, rdmAreVerbAnimalAtPlace, rdmAreWithAnimalVerbObjectAtPlace, rdmAreVerbObjectWithAnimalInCountry, rdmAreVerbObjectInCountry, rdmAreWithAnimalInCountry, rdmAreAnimal, rdmAreAdjectiveAtPlace, rdmAreAnimalAtPlace, rdmAreAnimalWithObject, rdmAreAnimalVerbObjectAtPlace, rdmAreVerbObject, rdmAreVerbObjectWithAnimal, rdmAreVerbAnimal, rdmAreVerbAnimalVerbObject,rdmAreAnimalFromCountry]
    
    open static func random() -> String {
        return Array(all.dropFirst(2)).random()
    }
    
    //MARK:- YOU ARE IN... 
    //Sentences that start with "you are in"
    
    ///Returns country only.
    ///Ex.: You are in Brazil.
    open static func rdmInCountry() -> String{
        return "You are in".concat(with: country)
    }
    
    //MARK:- "YOU ARE AT"
    //Sentences that start with "You are at..."
    
    ///Returns place from/- Country
    ///Ex.:You are at a Bar.
    ///Ex2.: You are at a Bar from Brazil.
    open static func rdmAtPlace() -> String{
        return "You are at the".concat(with: rdmPlaceRdmCountry)
    }
    
    ///Returns place (verb) object
    ///Ex. You are at the club holding a book
    open static func rdmAtPlaceWithObject() -> String{
        return "You are at the".concat(with: place, verbIng, object)
    }
    
    
    
    
    //MARK:- YOU ARE
    //Sentences that start with "you are"
    
    ///Returns (verb) animal at place
    ///Ex.: You are  hugging an snake at the bar
    open static func rdmAreVerbAnimalAtPlace() -> String{
        return rdmAreVerbAnimal().concat(with: "at the", place)
    }
    
    ///Returns place with animal (verb) object
    ///Ex.: You are with a buterfly kissing a Coffee machine at the bus stop
    open static func rdmAreWithAnimalVerbObjectAtPlace() -> String{
        return "You are with".concat(with: rdmAnimalRdmAdj, verbIng, object, "at the", place)
    }

    ///Returns country with animal (rdm Verb) object
    ///Ex.: You are confiscating a kitchen sponge with a baby in Mexico
    open static func rdmAreVerbObjectWithAnimalInCountry() -> String{
        return rdmAreVerbObject().concat(with: "with", animal, "in", country)
    }
    
    ///Returns (verb) object in country
    ///Ex.: You are carrying a Bed in Brazil
    open static func rdmAreVerbObjectInCountry() -> String{
        return rdmAreVerbObject().concat(with: "in", country)
    }
    
    ///Returns in country (verb) animal
    ///Ex.: You are flying on a Dog in Brazil
    open static func rdmAreWithAnimalInCountry() -> String{
        return rdmAreVerb().concat(with: rdmAnimalRdmAdj, "in", country)
    }
    
    ///Retuns verb
    ///You are complaining
    open static func rdmAreVerb()-> String{
        return "You are".concat(with: verbIng)
    }
    
    ///Returns animal
    ///Ex.: You are an dragon
    open static func rdmAreAnimal() -> String{
        return "You are".concat(with: rdmAnimalRdmAdj)
    }
    
    ///Returns adjective at some place
    ///Ex.: You are angry at the shoppin mall
    open static func rdmAreAdjectiveAtPlace()-> String{
        return "You are".concat(with: adjective, "at the", place)
    }
    
    ///Returns Animal at some place
    ///Ex.: You are an otter at
    open static func rdmAreAnimalAtPlace()-> String{
        return rdmAreAnimal().concat(with: "at the", place)
    }
    
    ///Retuns animal (verb) object
    ///Ex.: You are a chinchila napping on a computer
    open static func rdmAreAnimalWithObject()-> String{
        return rdmAreAnimal().concat(with: verbIng, object)
    }
   
    ///Retuns animal at place (verb) object
    ///Ex.: You are an deer smelling a desk at the barbershop
    open static func rdmAreAnimalVerbObjectAtPlace()-> String{
        return rdmAreAnimal().concat(with: verbIng, object, "at the", place)
    }
    
    ///Retuns (verb) object
    ///Ex.: You are sad reparing a cup
    open static func rdmAreVerbObject()-> String{
        return "You are".concat(with: verbIng, object)
    }
    
    ///Retuns (verb) Object with animal
    ///Ex.: You are drying a clock with a chimera
    open static func rdmAreVerbObjectWithAnimal()-> String{
        return rdmAreVerbObject().concat(with: "with", rdmAnimalRdmAdj)
    }
    
    ///Retuns (verb) animal
    ///Ex.: You are smelling a duck
    open static func rdmAreVerbAnimal()-> String{
        return "You are".concat(with: verbIng, rdmAnimalRdmAdj)
    }

    ///Returns (verb) animal (verb) Object
    ///Ex.: You are capturing a rabbit that is damaging a Bookcase
    open static func rdmAreVerbAnimalVerbObject()-> String{
        return rdmAreVerbAnimal().concat(with: "using", verbIng, object)
    }
    
    ///Returns Animal from country
    ///You are an hamster from Fiji
    open static func rdmAreAnimalFromCountry()-> String{
        return rdmAreAnimal().concat(with: "from", country)
    }
    
    
    
    
    //MARK:- VARIABLES and typealias
    typealias wl = EnWordList
    static var country: String{
        return wl.countries.random
    }
    static var place:  String{
        return wl.places.random.lowercased()
    }
    static var adjective:  String{
        return wl.adjectives.random.lowercased()
    }
    static var animal:  String{
        return addArticle(to: wl.animals.random).lowercased()
    }
    static var object:  String{
        return addArticle(to: wl.objects.random).lowercased()
    }
    static var verbIng: String{
        return wl.verbsIng.random.lowercased()
    }
    
    //MARK:- USEFULL
    fileprivate static func addArticle(to word: String) -> String{
        guard let first = word.trimmingCharacters(in: .whitespaces).first else {
            return word
        }
        
        if ["a", "e", "i", "o", "u"].contains(first) {
            return "an".concat(with:word)
        }else{
            return "a".concat(with:word)
        }
    }
    
    //MARK: Random variable compositions
    ///Returns an animal with random adjective
    fileprivate static var rdmAnimalWithAdjective:  String{
        return addArticle(to: adjective).concat(with: wl.animals.random)
    }
    ///Returns an animal with or without adjective, randomly chosen
    fileprivate static var rdmAnimalRdmAdj: String{
        return [animal, rdmAnimalWithAdjective].random
    }
    
    ///Returns a random place from an random country
    fileprivate static var rdmPlaceFromCountry:  String{
        return place.concat(with: "from").concat(with: country)
    }
    
    ///Returns a random place from or not a country, randomly chosen
    fileprivate static var rdmPlaceRdmCountry:  String{
        return [place, rdmPlaceFromCountry].random
    }
    
    
}
