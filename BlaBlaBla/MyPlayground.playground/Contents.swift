//: Playground - noun: a place where people can play

import UIKit
@testable import BlaBlaBlaPlaygound

//Int random
Int.random(min: 1, max: 3)

//Array Random
["a","b","c","d","e","f"].random

//strings
" to concat    ".concat(with: "with string")

" caPTALIZED First".capitalizingFirstLetter()

typealias g = PtBrSentenceGenerator
g.randomBeingStart(addAdjective: true)
g.randomAtPlace(addCountry: true)
g.randomBeingInCountry()
g.randomBeingInPlace()
g.randomBeingWithObject()
     //g.randomInCountry()
g.randomAtPlace()
    //g.randomAdjective()
    //g.randomAdjectiveLike()
g.randomCountryWithAnimal()
g.randomPlaceWith()



