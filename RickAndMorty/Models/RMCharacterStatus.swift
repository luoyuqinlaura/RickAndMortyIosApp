//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by biubiubiu on 2023/4/10.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // it is importtant to set the value same as API returns
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
