//
//  OMDBAPI.swift
//
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

/// Fanart API.
///
/// [Fanart API Documentation](https://fanarttv.docs.apiary.io)
///
/// Fanart API service is for those of you interested in using their images in
/// your application. Their API is a system they provide for you and your team to programmatically fetch and use their
/// data and/or images.
public final class OMDBAPI {
    
    /// Movies.
    public let movies: MovieService
    /// Episodes.
    public let episodes: EpisodeService

    public convenience init(apiKey: String) {
        self.init(apiKey: apiKey, urlSessionConfiguration: .default)
    }

    convenience init(apiKey: String, baseURL: URL = .omdbAPIBaseURL, urlSessionConfiguration: URLSessionConfiguration) {
        let urlSession = URLSession(configuration: urlSessionConfiguration)
        let serialiser = Serialiser(decoder: .omdb)
        let apiClient = OMDBAPIClient(apiKey: apiKey, baseURL: baseURL, urlSession: urlSession, serialiser: serialiser)

        self.init(
            movies: OMDBMovieService(apiClient: apiClient),
            episodes: OMDBEpisodeService(apiClient: apiClient)
        )
    }

    init(movies: MovieService, episodes: EpisodeService) {
        self.movies = movies
        self.episodes = episodes
    }
}
