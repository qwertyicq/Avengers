//
//  AvengersData.swift
//  Avengers
//
//  Created by Nikolay T on 18.11.2021.
//

import Foundation

class TeamsAvenger {
    var members: [Avenger]?
}

class Avenger {
    var name: String?
    var phrase: String?
    var ammunition: [Ammunition]?
    var status: Bool?
}

enum Ammunition {
    case sword;
    case book;
    case cloak;
}
