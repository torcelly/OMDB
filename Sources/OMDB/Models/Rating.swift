//
//  Rating.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

/// A rating.
public struct Rating: Decodable, Equatable, Hashable {

    /// Name of the service source of the value.
    public let source: String
    /// Rating value.
    public let value: String?
    ///
    /// Creates a new `Rating`.
    ///
    /// - Parameters:
    ///    - source: name of the service source of the value.
    ///    - value:  rating value.
    public init(source: String,
                value: String?) {
        self.source = source
        self.value = value
    }

}

extension Rating {

    private enum CodingKeys: String, CodingKey {
        case source = "Source"
        case value = "Value"
    }

}
