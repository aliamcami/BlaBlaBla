//
//  EnWordList.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 11/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

struct EnWordList: WordListProtocol {
    static var countries: [String]{
        return "Albania, Algeria, Angola, Argentina, Armenia, Australia, Austria, Azerbaijan, Bahamas, Bangladesh, Barbados, Belarus, Belgium, Belize, Benin, Bhutan, Bolivia, Botswana, Brazil, Brunei, Bulgaria, Burkina Faso, Burundi, Cabo Verde, Cambodia, Canada, Chad, Chile, China, Colombia, Comoros, Costa Rica, Croatia, Cuba, Cyprus, Czech Republic, Denmark, Dominica, Ecuador, Egypt, El Salvador, Equatorial Guinea, Eritrea, Estonia, Ethiopia, Fiji, Finland, France, Gabon, Gambia, Georgia, Germany, Ghana, Greece, Guatemala, Guinea, Guyana, Haiti, Honduras, Hungary, Iceland, India, Indonesia, Iran, Iraq, Ireland, Israel, Italy, Jamaica, Japan, Jordan, Kenya, Kiribati, Kuwait, Lesotho, Liberia, Libya, Liechtenstein, Lithuania, Luxembourg, Madagascar, Malawi, Malaysia, Maldives, Mali, Malta, Marshall Islands, Mauritania, Mauritius, Mexico, Micronesia, Moldova, Monaco, Mongolia, Montenegro, Morocco, Mozambique, Namibia, Nauru, Nepal, Netherlands, New Zealand, Nicaragua, Niger, Nigeria, North Korea, Norway, Oman, Palau, Panama, Paraguay, Peru, Philippines, Poland, Portugal, Romania, Russia, Saint Lucia, San Marino, Sao Tome and Principe, Saudi Arabia, Senegal, Serbia, Seychelles, Sierra Leone, Singapore, Slovakia, Slovenia, Solomon Islands, Somalia, South Africa, South Korea, South Sudan, Spain, Sri Lanka, Sudan, Suriname, Swaziland, Sweden, Switzerland, Syria, Taiwan, Tajikistan, Tanzania, Thailand, Tonga, Tunisia, Turkey, Turkmenistan, Uganda, Ukraine, United Kingdom, Uruguay, USA, Uzbekistan, Vanuatu, Vatican City, Venezuela, Zambia, Zimbabwe, Alaska, Arizona, Arkansas, California, Colorado, Connecticut, Delaware, Florida, Georgia, Hawaii, Idaho, Illinois, Indiana, Iowa, Kansas, Kentucky, Louisiana, Maine, Maryland, Massachusetts, Michigan, Minnesota, Mississippi, Missouri, Montana, Nebraska, Nevada, New Hampshire, New Jersey, New Mexico, New York, North Carolina, North Dakota, Ohio, Oklahoma, Oregon, Pennsylvania, Rhode Island, South Carolina, South Dakota, Tennessee, Texas, Utah, Vermont, Virginia, Washington, West Virginia, Wisconsin, Wyoming".split(separator: ",").map(String.init)
    }
    
    static var places: [String]{
        return "Airport, Apartment, Apartment building, ATM, Avenue, Bakery, Bank, Bar, Barbecue Restaurant, Barber shop, Beach, BeautyParlor, Bookstore, Bowling alley, Brewery, Building Office, Bus Station, Bus stop, Bus Terminal, Butchers, Café, Cafeteria, Capital, Center, Chapel, Church, cinema, City, CityHall, Clinic, Club, College, Convenience store, Court, Craft Market, Cub, Dental Office, Department Store, Disco, Dispatcher, Driving School, Drugstore, Field, Fire department, Fire Station, Flat, Forwarding Agent, Gallery, Garden, Gas Station, Grill, Gym, hairdresser, Hardware store, Hospital, Hotel, House, Jail, Jewelry, Lake, Launderette, Laundromat, Library, Lottery Retailler, Mall, Market, Movie Theater, movies, Museum, Nightclub, Office, Office building, Park, Parking Garage, Parking Lot, Pavement, Pharmacy, Police Station, Post office, Pothouse, Prison, Private Company, Pub, Repair Shop, Restaurant, River, Road, School, Sidewalk, Square, Steak House, Steak Restaurant, Store, Street, Suburb, Subway, Subway station, Supermarket, Theater, Train Station, Underground, University, Video Store, Zoo".split(separator: ",").map(String.init)

    }
    
    static var adjectives: [String]{
        return "aggressive, agreeable, ambitious, ancient, angry, attractive, bald, beautiful, big, blue, brave, calm, chubby, clean, clever, clumsy, cold, cool, dazzling, dead, defeated, delightful, dirty, drab, eager, elegant, embarrassed, faithful, famous, fancy, fast, fat, fierce, flabby, fluffy, gentle, gifted, gigantic, glamorous, gorgeous, gray, great, green, grumpy, hallowed, handsome, happy, helpless, huge, icy, important, itchy, jealous, jolly, kind, large, lazy, little, lively, loud, magnificent, mango, mealy, melted, microscopic, miniature, modern, muscular, mushy, mysterious, nervous, nice, noisy, obedient, odd, old, old-fashioned, orange, pitiful, plain, plump, polite, poor, poor, powerful, prehistoric, proud, purple, quick, quiet, red, refined, repulsive, rich, rich, round, salmon, scary, scrawny, short, shy, silly, skinny, slow, small, square, strong, swift, tall, thoughtless, tiny, ugly, unimportant, uninterested, unsightly, victorious, weak, wet, witty, wonderful, worried, yellow, young, zealous".split(separator: ",").map(String.init)
    }
    
    static var animals: [String]{
        return "cerberus, bear, rabbit, air elemental, alligator, ant, baby, bear, bee, bird, bull, butterfly, camel, capybara, carp, cat, Centaur, cheetah, chicken, chimera, chimpanzee, chinchilla, clown fish, cow, crab, crocodile, Cyclops, deer, digimon, dog, dolphin, dragon, dragonfly, duck, dwarf, eagle, earth elemental, elephant, elf, fairy, Fire elemental, fish, fly, fox, frog, giraffe, gnome, goat, goldfish, golem, grasshopper, hamster, hedgehog, heron, hippopotamus, horse, hummingbird, hydra, iguana, Indipig, jabuti, jellyfish, kangaroo, kitten, koala, kraken, ladybug, lion, lobster, lump, macaw, mermaid, Minotaur, monkey, monster, mouse, octopus, ogre, Opossum, Orc, ostrich, otter, owl, panda, panther, parrot, Phoenix, pig, pikachu, pixie, pokemon, porcupine, puppy, rabbit, raccoon, rat, rhinoceros, salamander, scorpion, seal, shark, sheep, snail, snake, spider, squirrel, succubus, sucuri, tarantula, tiger, toucan, troll, turkey, turtle, tyrannosaurus, unicorn, vampire, water elemental, werewolf, whale, wolf, woodpecker, Yeti, zebra, beast".split(separator: ",").map(String.init)
    }
    
    static var objects: [String]{
        return "Alarm clock, Armchair, Ashtray, Bathtub, Bed, Bedside table, Blanket, Blinds, Bookcase, Broom, Bucket, Bunk bed, Chair, Chandelier, Clock, Coat stand, Coffee machine, Cologne, Comb, Computer, Conditioner, Cotton swabs, Couch, Cup, Cupboard, Curtains, Cushion, Dental floss, Deodorant, Desk, Diapers, Dishwasher, Door knob, Doormat, Double bed, Dressing table, Duvet, Fireplace, Firewood, Fork, Fruit bowl, Glass, Hair brush, Hanger, Headboard, Iron, Ironing board, Kitchen sponge, Knife, Lamp, Lampshade, Mattress, Microwave, Mirror, Moisturizer, Mop, Mug, Oven, Pad, Painting, Pan, Pillow, Pillowcase, Plate, Plughole, Pot, Radiator, Radio, Razor, Refrigerator, Rug, Shampoo, Shaving cream, Sheet, Shelf, Shower, Sideboard, Single bed, Sink, Soap, Sponge, Spoon, Squeegee, Stool, Stove, Switch, Table, Tablecloth, Tap, Telephone, Television, Toilet paper, Toothbrush, Toothpaste, Towel, Vacuum cleaner, Vase, Wallpaper, Wardrobe, Washing machine".split(separator: ",").map(String.init)
    }
    
    static var verbsIng: [String]{
        return "buying, calling, capturing, carrying, chasing, checking on, choosing, cleaning, complaining to, confiscating, damaging, dancing with, destroying, drying, fixing, flying on, hugging, kissing, licking, lifting, napping on, observing, playing with, repairing, seeing, selling, sitting on, smelling, worshipping".split(separator: ",").map(String.init)
    }
    

}
