//
//  URL+QueryItem.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

extension URL {

    func appendingPathComponent(_ value: Int) -> Self {
        appendingPathComponent(String(value))
    }

    func appendingQueryItem(name: String, value: CustomStringConvertible) -> Self {
        var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: false)!
        var queryItems = urlComponents.queryItems ?? []
        queryItems.append(URLQueryItem(name: name, value: value.description))
        urlComponents.queryItems = queryItems
        return urlComponents.url!
    }

}

extension URL {

    private enum QueryItemName {
        static let apiKey = "api_key"
        static let imdbKey = "i"
        static let titleKey = "t"
        static let typeKey = "type"
        static let yearKey = "y"
        static let plotKey = "plot"
        static let returnKey = "r"
        static let callbackKey = "callback"
        static let versionKey = "v"
        static let searchKey = "s"
        static let pageKey = "page"
        static let seasonKey = "Season"
        static let episodeKey = "Episode"
    }
    
    enum ContentType: String {
        case movie
        case series
        case episode
    }
    
    enum Plot: String {
        case short
        case full
    }
    
    enum Return: String {
        case json
        case xml
    }

    func appendingAPIKey(_ apiKey: String) -> Self {
        appendingQueryItem(name: QueryItemName.apiKey, value: apiKey)
    }

    func appendingIMDB(_ imdb: String?) -> Self {
        guard var imdb = imdb else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.imdbKey, value: imdb)
    }
    
    func appendingSeason(_ season: Int?) -> Self {
        guard var season = season else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.seasonKey, value: season)
    }
    
    func appendingEpisode(_ episode: Int?) -> Self {
        guard var episode = episode else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.episodeKey, value: episode)
    }
    
    func appendingTitle(_ title: String?) -> Self {
        guard var title = title else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.titleKey, value: title)
    }
    
    func appendingType(_ type: ContentType?) -> Self {
        guard var type = type else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.typeKey, value: type.rawValue)
    }
    
    func appendingYear(_ year: Int?) -> Self {
        guard var year = year else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.yearKey, value: year)
    }
    
    func appendingPlot(_ plot: Plot?) -> Self {
        guard var plot = plot else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.plotKey, value: plot.rawValue)
    }
    
    func appendingReturn(_ ret: Return?) -> Self {
        guard var ret = ret else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.returnKey, value: ret.rawValue)
    }
    
    func appendingCallback(_ callback: String?) -> Self {
        guard var callback = callback else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.callbackKey, value: callback)
    }
    
    func appendingVersion(_ version: Int?) -> Self {
        guard var version = version else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.versionKey, value: version)
    }
    
    func appendingSearch(_ search: String?) -> Self {
        guard var search = search else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.searchKey, value: search)
    }
    
    func appendingPage(_ page: Int?) -> Self {
        guard var page = page else {
            return self
        }
        return appendingQueryItem(name: QueryItemName.pageKey, value: page)
    }
}
