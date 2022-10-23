//
//  MoviesEndpoint.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

enum MoviesEndpoint {

    case movie(imdb: String)

}

extension MoviesEndpoint: Endpoint {

    private static let basePath = URL(string: "/")!

    var path: URL {
        switch self {
        case .movie(let imdb):
            return Self.basePath
                .appendingPathComponent("movies")
                .appendingIMDB(imdb)
            
        }
    }

}
