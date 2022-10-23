//
//  OMDBError.swift
//  
//
//  Created by Fernando Torcelly Garcia on 19/10/22.
//

import Foundation

/// A Fanart error.
public enum OMDBError: Error {
    
    /// Network error.
    case network(Error)
    /// Unauthorised.
    case unauthorized
    /// Not found.
    case notFound
    /// Unknown error.
    case unknown
    /// Data decode error.
    case decode(Error)

}

extension OMDBError: LocalizedError {

    public var errorDescription: String? {
        switch self {
        case .network(let error):
            return error.localizedDescription

        case .unauthorized:
            return "Unauthorised"

        case .notFound:
            return "Not Found"

        case .unknown:
            return "Unknown Error"

        case .decode:
            return "Data Decode Error"
        }
    }

}
