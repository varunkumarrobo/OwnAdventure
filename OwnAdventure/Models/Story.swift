//
//  Story.swift
//  OwnAdventure
//
//  Created by Varun Kumar on 11/04/23.
//

import Foundation

struct Story {
    var t : String
    var c1 : String
    var c2 : String
    var cD1 : Int
    var cD2 : Int
    
    init(title : String, choice1 : String, choice2 : String, choice1Destination : Int, choice2Destination : Int ) {
        t = title
        c1 = choice1
        c2 = choice2
        cD1 = choice1Destination
        cD2 = choice2Destination
    }
}
