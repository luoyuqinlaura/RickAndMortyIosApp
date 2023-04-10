//
//  RMService.swift
//  RickAndMorty
//
//  Created by biubiubiu on 2023/4/10.
//

import Foundation

/// Primary API service object to get our Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Private constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
