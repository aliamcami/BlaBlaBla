//
//  SentenceGeneratorProtocol.swift
//  BlaBlaBla
//
//  Created by camila oliveira on 12/04/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//



public protocol SentenceGeneratorProtocol {
    static func random() -> String
    static var all : [() -> String] {get}
    typealias wl = WordListProtocol
}
public extension SentenceGeneratorProtocol{
    ///Private init
    private init(){self.init()}
}

