//
//  TVShow.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

/// A tv show.
public struct TVShow: Decodable, Equatable, Hashable {

    /// TV show title.
    public let title: String
    /// TV show year of the release date.
    public let year: String?
    /// TV show year of the release date.
    public let rated: String?
    /// TV show release date.
    public let released: String?
    /// TV show runtime, in minutes.
    public let runtime: String?
    /// TV show genre.
    public let genre: String?
    /// TV show director's name.
    public let director: String?
    /// TV show writer's name.
    public let writer: String?
    /// Cast member's real names.
    public let actors: String?
    /// TV show synopsis.
    public let plot: String?
    /// TV show spoken languages.
    public let language: String?
    /// TV show country.
    public let country: String?
    /// TV show
    public let awards: String?
    /// TV show poster url.
    public let poster: String?
    /// TV show
    public let ratings: [Rating]?
    /// TV show
    public let metascore: String?
    /// TV show
    public let imdbRating: String?
    /// TV show
    public let imdbVotes: String?
    /// IMDd identifier.
    public let imdbID: String?
    /// TV show
    public let type: String?
    /// TV show
    public let totalSeasons: String?
    /// TV show
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
                totalSeasons: String?,
                response: String?) {
        self.title = title
        self.year = year
        self.rated = rated
        self.released = released
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
        self.totalSeasons = totalSeasons
        self.response = response
    }

}

extension TVShow {

    private enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case released = "Released"
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
        case totalSeasons = "TotalSeasons"
        case response = "Response"
    }

}
