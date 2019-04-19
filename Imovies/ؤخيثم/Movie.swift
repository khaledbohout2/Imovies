//
//  Movie.swift
//  Imovies
//
//  Created by Khaled Bohout on 3/24/19.
//  Copyright © 2019 Khaled Bohout. All rights reserved.
//

import Foundation

class Movie {
    
    private var _movietitle: String!
    private var _movieyear:String!
    private var _movierated: String!
    private var _moviereleaseddate: String!
    private var _movieruntime: String!
    private var _moviegenre: String!
    private var _moviedirector: String!
    private var _moviewriter: String!
    private var _movieactors: String!
    private var _movieplots:String!
    private var _movielanguage: String!
    private var _moviecountry: String!
    private var _movieawards: String!
    private var _moviemetascore: String!
    private var _imdbrating: String!
    private var _imdbvotes: String!
    private var _totalseasons: String!
    private var _boxoffice: String!
    private var _production: String!
    private var _posterimgurl:String!
    private var _type:String!
    
    
    var type:String {
        if _type == nil{
            _type = ""
        }
        return _type
    }
    
    var movietitle: String {
        
        if _movietitle == nil {
            _movietitle = ""
        }
        
        return _movietitle
        
    }

    var movieyear:String{
        
        if _movieyear == nil {
            _movieyear = ""
        }
        
        return _movieyear
    }
    
    var movierated: String {
        
        if _movierated == nil {
            _movierated = ""
        }
        
     return _movierated
    }
    
   var moviereleaseddate: String {
    
    if _moviereleaseddate == nil {
        _moviereleaseddate = ""
    }
    
     return _moviereleaseddate
    }
    
    var movieruntime: String {
        
        if _movieruntime == nil {
            _movieruntime = ""
        }
        
     return _movieruntime
    }
    
    var moviegenre: String {
        
        if _moviegenre == nil {
            _moviegenre = ""
        }
        
     return _moviegenre
    }
    
    var moviedirector: String {
        
        if _moviedirector == nil {
            _moviedirector = ""
        }
        
     return _movieactors
    }
    
    var moviewriter: String {
        
        if _moviewriter == nil {
            _moviewriter = ""
        }
        
     return _moviewriter
    }
    
    var movieactors: String {
        
        if _movieactors == nil {
            _movieactors = ""
        }
        
     return _movieactors
    }
    
    var movieplots: String {
        
        if _movieplots == nil {
            _movieplots = ""
        }
        
     return _movieplots
    }
    
    var movielanguage: String {
        
        if _movielanguage == nil {
            _movielanguage = ""
        }
        
     return _movielanguage
    }
    
    var moviecountry: String {
        
        if _moviecountry == nil {
            _moviecountry = ""
        }
        
     return _moviecountry
    }
    
    var movieawards: String {
        
        if _movieawards == nil {
            _movieawards = ""
        }
        
     return _movieawards
    }
    
    var moviemetascore: String {
        
        if _moviemetascore == nil {
            _moviemetascore = ""
        }
        
     return _moviemetascore
    }
    
    var imdbrating: String {
        
        if _imdbrating == nil {
            _imdbrating = ""
        }
        
     return _imdbrating
    }
    
    var imdbvotes: String {
        
        if _imdbvotes == nil {
            _imdbvotes = ""
        }
        
     return _imdbvotes
    }
    
    var totalseasons: String {
        
        if _totalseasons == nil {
            _totalseasons = ""
        }
        
     return _totalseasons
    }
    
    var boxoffice: String {
        
        if _boxoffice == nil {
            _boxoffice = ""
        }
        
     return _boxoffice
    }
    
    var production: String {
        
        if _production == nil {
            _production = ""
        }
        
     return _production
    }

    var posterimgurl: String {
        
        if _posterimgurl == nil {
            _posterimgurl = ""
        }
        
     return _posterimgurl
    }
    
    
    
    init(Dict:Dictionary<String,AnyObject>){
        
        if let production = Dict["Production"]as? String
        {
            self._production = production
        }
        
        if let boxoffice = Dict["BoxOffice"] as? String
        {
            self._boxoffice = boxoffice
        }
        
        if let title = Dict["Title"] as? String
        {
            self._movietitle = title
        }
        if let year = Dict["Year"] as? String
        {
            self._movieyear = year
        }
        if let rated = Dict["Rated"] as? String
        {
            self._movierated = rated
        }
        if let released = Dict["Released"] as? String
        {
            self._moviereleaseddate = released
        }
        if let runtime = Dict["Runtime"] as? String
        {
            self._movieruntime = runtime
        }
        if let genre = Dict["Genre"] as? String
        {
            self._moviegenre = genre
        }
        if let director = Dict["Director"] as? String
        {
            self._moviedirector = director
        }
        if let actors = Dict["Actors"] as? String
        {
            self._movieactors = actors
        }
        if let plot = Dict["Plot"] as? String
        {
            self._movieplots = plot
        }
        if let language = Dict["Language"] as? String
        {
            self._movielanguage = language
        }
        if let country = Dict["Country"] as? String
        {
            self._moviecountry = country
        }
        if let metascore = Dict["Metascore"] as? String
        {
            self._moviemetascore = metascore
        }
        if let imdbRating = Dict["imdbRating"] as? String
        {
            self._imdbrating = imdbRating
        }
        
        if let imdbVotes = Dict["imdbVotes"] as? String
        {
            self._imdbvotes = imdbVotes
        }
        
        if let totalSeasons = Dict["totalSeasons"] as? String
        {
            self._totalseasons = totalSeasons
        }
        
        if let type = Dict["Type"] as? String {
            
            self._type = type
        }
        
        if let writer = Dict["Writer"] as? String {
            
            self._moviewriter = writer
        }
        
        if let awards = Dict["Awards"] as? String {
            
            self._movieawards = awards
        }
        
        if let posterimgurl = Dict["Poster"]as? String{
            
            self._posterimgurl = posterimgurl
        }

            
        }
    }
    


