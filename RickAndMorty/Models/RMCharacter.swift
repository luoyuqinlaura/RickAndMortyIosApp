//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by biubiubiu on 2023/4/8.
//

import Foundation

struct RMCharater: Codable {
    let id: Int
    let name: String
    //since we checked the doc, it shows the status can only be alive, dead or unknown
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
