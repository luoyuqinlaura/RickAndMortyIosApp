//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by biubiubiu on 2023/4/10.
//

import Foundation

enum RMCharacterGender: String, Codable {
    // it is importtant to set the value same as API returns
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
