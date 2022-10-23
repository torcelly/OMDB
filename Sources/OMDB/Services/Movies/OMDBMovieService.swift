//
//  OMDBMovieService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

final class OMDBMovieService: MovieService {

    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func movie(imdb: String) async throws -> Movie {
        try await apiClient.get(endpoint: MoviesEndpoint.movie(imdb: imdb))
    }

}
