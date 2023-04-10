//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by biubiubiu on 2023/4/10.
//

import Foundation

//we dont want to hardcode endpoint, so enum is a good choice
@frozen enum RMEndpoint: String {
    case character // "character"
    case location
    case episode
}
