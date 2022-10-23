//
//  Season.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

/// A Episode.
public struct Season: Decodable, Equatable, Hashable {

    /// Episode title.
    public let title: String
    /// Episode year of the release date.
    public let season: String?
    /// Episode year of the release date.
    public let totalSeasons: String?
    /// Episode release date.
    public let episodes: [Episode]?
    /// M
    public let response: String?
    ///
    /// Creates a new `Movie`.
    ///
    /// - Parameters:
    ///    - title: movie name.
    ///    - season:  year of the release date.
    ///    - totalSeasons:  Movie year of the release date.
    ///    - episodes:  Movie release date.
    ///    - response:  a.
    public init(title: String,
                season: String?,
                totalSeasons: String?,
                episodes: [Episode]?,
                response: String?) {
        self.title = title
        self.season = season
        self.totalSeasons = totalSeasons
        self.episodes = episodes
        self.response = response
    }

}

extension Season {

    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case season = "Season"
        case totalSeasons
        case episodes = "Episodes"
        case response = "Response"
    }

}
