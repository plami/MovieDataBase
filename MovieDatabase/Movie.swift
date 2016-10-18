//
//  Movie.swift
//  MovieDatabase
//
//  Created by macbook on 10/16/16.
//  Copyright © 2016 macbook. All rights reserved.
//

import Foundation

class Movie {
    
    var name: String!
    var year: String!
    var poster: String!
    var genre: String!
    var runTime: String!
    var director: String!
    var writer: String!
    var country: String!
    var awards: String!
    var actors: String!
    var plot: String!
    
    init(json: Dictionary<String, AnyObject>) {
        if let movieName = json["Title"] as? String {
            self.name = movieName
        }
        if let movieYear = json["Year"] as? String {
            self.year = movieYear
        }
        if let movieImage = json["Poster"] as? String {
            self.poster = movieImage
        }
        if let movieGenre = json["Genre"] as? String {
            self.genre = movieGenre
        }
        if let movieRunTime = json["Runtime"] as? String {
            self.runTime = movieRunTime
        }
        if let movieDirector = json["Director"] as? String {
            self.director = movieDirector
        }
        if let movieWriter = json["Writer"] as? String {
            self.writer = movieWriter
        }
        if let movieCountry = json["Country"] as? String {
            self.country = movieCountry
        }
        if let movieAwards = json["Awards"] as? String {
            self.awards = movieAwards
        }
        if let movieActors = json["Actors"] as? String {
            self.actors = movieActors
        }
        if let moviePlot = json["Plot"] as? String {
            self.plot = moviePlot
        }
    }
}
