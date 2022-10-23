//
//  EpisodeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

/// A service to fetch an up to date list of all of the movie ids that have been changed in the past 24 hours.
public protocol EpisodeService {

    /// Returns  movie ids that have been changed.
    ///
    /// [OMDB API - Get images for Movie](https://fanarttv.docs.apiary.io/reference/movies/get-movies/get-images-for-movie)
    ///
    /// - Precondition: `page` can be between `1` and `1000`.
    ///
    /// - Parameters:
    ///     - imdb: IMDB identifier.
    ///
    /// - Returns: A array of movie ids as a pageable list.
    func episodeByIMDBId(imdb: String) async throws -> Episode
    
    /// Returns  movie ids that have been changed.
    ///
    /// [OMDB API - Get images for Movie](https://fanarttv.docs.apiary.io/reference/movies/get-movies/get-images-for-movie)
    ///
    /// - Precondition: `page` can be between `1` and `1000`.
    ///
    /// - Parameters:
    ///     - imdb: IMDB identifier.
    ///
    /// - Returns: A array of movie ids as a pageable list.
    func episodes(imdb: String, season: Int) async throws -> Season
    
    /// Returns  movie ids that have been changed.
    ///
    /// [OMDB API - Get images for Movie](https://fanarttv.docs.apiary.io/reference/movies/get-movies/get-images-for-movie)
    ///
    /// - Precondition: `page` can be between `1` and `1000`.
    ///
    /// - Parameters:
    ///     - imdb: IMDB identifier.
    ///
    /// - Returns: A array of movie ids as a pageable list.
    func episode(imdb: String, season: Int, episode: Int) async throws -> Episode

}

public extension EpisodeService {

    func episodeByIMDBId(imdb: String) async throws -> Episode {
        try await episodeByIMDBId(imdb: imdb)
    }

    func episodes(imdb: String, season: Int) async throws -> Season {
        try await episodes(imdb: imdb, season: season)
    }
    /*
    func episode(imdb: String, season: Int, episode: Int) async throws -> Episode {
        try await episode(imdb: imdb, season: season, episode: episode)
    }*/
}
