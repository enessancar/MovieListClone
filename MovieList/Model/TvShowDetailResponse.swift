//
//  TvShowDetailResponse.swift
//  MovieList
//
//  Created by Enes Sancar on 13.11.2023.
//

import Foundation

struct TvShowDetailResponse: Codable {
    let adult: Bool?
    let backdropPath: String?
    let episodeRunTime: [Int]?
    let firstAirDate: String?
    let homepage: String?
    let id: Int?
    let inProduction: Bool?
    let languages: [String]?
    let lastAirDate: String?
    let name: String?
    let numberOfEpisodes, numberOfSeasons: Int?
    let originCountry: [String]?
    let originalLanguage, originalName, overview: String?
    let popularity: Double?
    let posterPath: String?
    let status, tagline, type: String?
    let voteAverage: Double?
    let voteCount: Int?
    
    var _voteAverage: Double {
        voteAverage ?? 0.0
    }
    
    var rating: String {
        return "Show Rating: " + String(format: "%.1f", _voteAverage)
    }
    
    var _posterPath: String {
        posterPath ?? "N/A"
    }
    
    var posterURL: String {
        return "https://image.tmdb.org/t/p/w500" + (_posterPath)
    }
    
    var _backdropPath: String {
        backdropPath ?? "N/A"
    }
    
    var backdropURL: String {
        return "https://image.tmdb.org/t/p/w500" + (_backdropPath)
    }
    
    var homePageURL: URL? {
        return URL(string: homepage ?? "https://themoviedb.org/")
    }
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case episodeRunTime = "episode_run_time"
        case firstAirDate = "first_air_date"
        case homepage, id
        case inProduction = "in_production"
        case languages
        case lastAirDate = "last_air_date"
        case name
        case numberOfEpisodes = "number_of_episodes"
        case numberOfSeasons = "number_of_seasons"
        case originCountry = "origin_country"
        case originalLanguage = "original_language"
        case originalName = "original_name"
        case overview, popularity
        case posterPath = "poster_path"
        case status, tagline, type
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
