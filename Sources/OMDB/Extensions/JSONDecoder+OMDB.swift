//
//  JSONDecoder+OMDB.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

extension JSONDecoder {

    static var omdb: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .formatted(.omdb)
        return decoder
    }

}
