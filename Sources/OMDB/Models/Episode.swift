//
//  Episode.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

/// A Episode.
public struct Episode: Decodable, Equatable, Hashable {

    /// Episode title.
    public let title: String
    /// Episode year of the release date.
    public let year: String?
    /// Episode year of the release date.
    public let rated: String?
    /// Episode release date.
    public let released: String?
    /// Episode season.
    public let season: String?
    /// Episode number.
    public let episode: String?
    /// Episode runtime, in minutes.
    public let runtime: String?
    /// Episode genre.
    public let genre: String?
    /// Episode director's name.
    public let director: String?
    /// Episode writer's name.
    public let writer: String?
    /// Cast member's real names.
    public let actors: String?
    /// Episode synopsis.
    public let plot: String?
    /// Episode spoken languages.
    public let language: String?
    /// Episode country.
    public let country: String?
    /// Episode awards.
    public let awards: String?
    /// Movie poster url.
    public let poster: String?
    /// M
    public let ratings: [Rating]?
    /// M
    public let metascore: String?
    /// M
    public let imdbRating: String?
    /// M
    public let imdbVotes: String?
    /// IMDd identifier.
    public let imdbID: String?
    /// M
    public let type: String?
    /// M
    public let response: String?
    ///
    /// Creates a new `Movie`.
    ///
    /// - Parameters:
    ///    - title: movie name.
    ///    - year:  year of the release date.
    ///    - rated:  Movie year of the release date.
    ///    - released:  Movie release date.
    ///    - runtime:  Movie runtime, in minutes.
    ///    - genre:  Movie genre.
    ///    - director:  a.
    ///    - writer:  a.
    ///    - actors:  Cast member's real names..
    ///    - plot:  Movie spoken languages.
    ///    - language:  a.
    ///    - country:  a.
    ///    - writer:  a.
    ///    - awards:  a.
    ///    - poster:  a.
    ///    - ratings:  a.
    ///    - metascore:  a.
    ///    - imdbRating:  a.
    ///    - imdbVotes:  a.
    ///    - imdbID:  a.
    ///    - type:  a.
    ///    - dvd:  a.
    ///    - boxOffice:  a.
    ///    - production:  a.
    ///    - website:  Movie's web site..
    ///    - response:  a.
    public init(title: String,
                year: String?,
                rated: String?,
                released: String?,
                season: String?,
                episode: String?,
                runtime: String?,
                genre: String?,
                director: String?,
                writer: String?,
                actors: String?,
                plot: String?,
                language: String?,
                country: String?,
                awards: String?,
                poster: String?,
                ratings: [Rating]?,
                metascore: String?,
                imdbRating: String?,
                imdbVotes: String?,
                imdbID: String?,
                type: String?,
                response: String?) {
        self.title = title
        self.year = year
        self.rated = rated
        self.released = released
        self.season = season
        self.episode = episode
        self.runtime = runtime
        self.genre = genre
        self.director = director
        self.writer = writer
        self.actors = actors
        self.plot = plot
        self.language = language
        self.country = country
        self.awards = awards
        self.poster = poster
        self.ratings = ratings
        self.metascore = metascore
        self.imdbRating = imdbRating
        self.imdbVotes = imdbVotes
        self.imdbID = imdbID
        self.type = type
        self.response = response
    }

}

extension Episode {

    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case released = "Released"
        case season = "Season"
        case episode = "Episode"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case language = "Language"
        case country = "Country"
        case awards = "Awards"
        case poster = "Poster"
        case ratings = "Ratings"
        case metascore = "Metascore"
        case imdbRating
        case imdbVotes
        case imdbID
        case type = "Type"
        case response = "Response"
    }

}
