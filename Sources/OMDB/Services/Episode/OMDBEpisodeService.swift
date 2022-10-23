//
//  OMDBEpisodeService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

final class OMDBEpisodeService: EpisodeService {

    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func episodeByIMDBId(imdb: String) async throws -> Episode {
        try await apiClient.get(endpoint: EpisodesEndpoint.episodeByIMDBId(imdb: imdb))
    }

    func episodes(imdb: String, season: Int) async throws -> Season {
        try await apiClient.get(endpoint: EpisodesEndpoint.episodes(imdb: imdb, season: season))
    }
    
    func episode(imdb: String, season: Int, episode: Int) async throws -> Episode {
        try await apiClient.get(endpoint: EpisodesEndpoint.episode(imdb: imdb, season: season, episode: episode))
    }
}
