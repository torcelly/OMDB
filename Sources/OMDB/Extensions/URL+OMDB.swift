//
//  URL+OMDB.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

extension URL {

    static var omdbAPIBaseURL: URL {
        URL(string: "http://www.omdbapi.com")!
    }

}
