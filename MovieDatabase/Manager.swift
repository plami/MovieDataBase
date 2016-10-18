//
//  Manager.swift
//  MovieDatabase
//
//  Created by macbook on 10/16/16.
//  Copyright © 2016 macbook. All rights reserved.
//

import Foundation

class Manager {
    
    var movieName: String = ""
    var movie: Movie?
    
    class sharedInstance {
        static let sharedInstance = Manager()
    }
}
