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


//RANDOM TEST
typealias g = PtBrSentenceGenerator
for (i,e) in g.all.enumerated(){
    print("\(i) - \(e)")
}
g.rdmPlaceWithAnimal
g.rdmWithAnimal
g.rdmActionObjectWithAnimal



