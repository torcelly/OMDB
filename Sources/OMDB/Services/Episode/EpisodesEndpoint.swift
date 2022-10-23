//
//  EpisodesEndpoint.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

enum EpisodesEndpoint {

    case episodeByIMDBId(imdb: String)
    case episodes(imdb: String, season: Int)
    case episode(imdb: String, season: Int, episode: Int)
    
}

extension EpisodesEndpoint: Endpoint {

    private static let basePath = URL(string: "/")!

    var path: URL {
        switch self {
        case .episodeByIMDBId(let imdb):
            return Self.basePath
                .appendingIMDB(imdb)
            
        case .episodes(let imdb, let season):
            return Self.basePath
                .appendingIMDB(imdb)
                .appendingSeason(season)
            
        case .episode(let imdb, let season, let episode):
            return Self.basePath
                .appendingIMDB(imdb)
                .appendingSeason(season)
                .appendingEpisode(episode)
            
        }
    }

}
