//
//  TvShowResponseModel.swift
//  MovieList
//
//  Created by Enes Sancar on 13.11.2023.
//

import Foundation

struct TvShowResponse: Codable {
    let page: Int?
    let results: [TvResults]?
    let totalPages, totalResults: Int?
    
    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

struct TvResults: Codable {
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let originCountry: [String]?
    let overview: String?
    let popularity: Double?
    let posterPath, firstAirDate, name: String?
    let voteAverage: Double?
    let voteCount: Int?
    
    var _voteAverage: Double {
        voteAverage ?? 0.0
    }

    var _posterPath: String {
        posterPath ?? "N/A"
    }
    
    var rating: String? {
        return "Show Rating:" + String(format: "%.1f", _voteAverage)
    }
    
    var posterURL: URL? {
        return URL(string: "https://image.tmdb.org/t/p/w500" + (_posterPath))
    }
    
    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originCountry = "origin_country"
        case overview, popularity
        case posterPath = "poster_path"
        case firstAirDate = "first_air_date"
        case name
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
