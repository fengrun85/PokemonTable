//
//  pokemonStruct.swift
//  PokemonTable
//
//  Created by apple on 29/11/19.
//  Copyright © 2019 Tinkercademy. All rights reserved.
//

import Foundation

enum pokemonType {
    case 🌱
    case 🔥
    case 💧
    case Normal
    case Ground
    case 🐦
    case 🧪
    case 🔌
    case 🥊
    case Psychic
    case 👻
    case 🐉
    case 🥶
    case 💎
    case 🐛
}


struct pokemon {
    var number : Int
    var name : String
    var type : pokemonType
    var secondType : pokemonType
    var picture : String
}
