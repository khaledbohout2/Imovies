//
//  TableView.swift
//  Imovies
//
//  Created by Khaled Bohout on 3/25/19.
//  Copyright © 2019 Khaled Bohout. All rights reserved.
//

import UIKit

class TableView: UITableViewController {
    
    var movie : Movie!
    
    @IBOutlet weak var headernamelbl: UILabel!
    @IBOutlet weak var movieposterimg: UIImageView!
    @IBOutlet weak var movietitlelbl: UILabel!
    @IBOutlet weak var movieyearlbl: UILabel!
    @IBOutlet weak var movieratedlbl: UILabel!
    @IBOutlet weak var movirreleaseddate: UILabel!
    @IBOutlet weak var movieruntimelbl: UILabel!
    @IBOutlet weak var moviegenrelbl: UILabel!
    @IBOutlet weak var moviedirectorlbl: UILabel!
    @IBOutlet weak var moviewriterlbl: UILabel!
    @IBOutlet weak var movieactorslbl: UILabel!
    @IBOutlet weak var movieplotslbl: UILabel!
    @IBOutlet weak var movielanguagelbl: UILabel!
    @IBOutlet weak var moviecountrylbl: UILabel!
    @IBOutlet weak var movieawardslbl: UILabel!
    @IBOutlet weak var moviemetascore: UILabel!
    @IBOutlet weak var imdbratinglbl: UILabel!
    @IBOutlet weak var imdbvoteslbl: UILabel!
    @IBOutlet weak var totalseasonslbl: UILabel!
    @IBOutlet weak var boxofficelbl: UILabel!
    @IBOutlet weak var productionlbl: UILabel!
    @IBOutlet weak var ratingsourcelbl: UILabel!
    @IBOutlet weak var ratingvalue: UILabel!
    @IBOutlet weak var rating2source: UILabel!
    @IBOutlet weak var rating2value: UILabel!
    @IBOutlet weak var rating3source: UILabel!
    @IBOutlet weak var rating3value: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.headernamelbl.text = movie.movietitle
        self.movietitlelbl.text = movie.movietitle
        self.movieyearlbl.text = movie.movieyear
        self.movieratedlbl.text = movie.movierated
        self.movirreleaseddate.text = movie.moviereleaseddate
        self.movieruntimelbl.text = movie.movieruntime
        self.moviegenrelbl.text = movie.moviegenre
        self.moviedirectorlbl.text = movie.moviedirector
        self.moviewriterlbl.text = movie.moviewriter
        self.movieactorslbl.text = movie.movieactors
        self.movieplotslbl.text = movie.movieplots
        self.movielanguagelbl.text = movie.movielanguage
        self.moviecountrylbl.text = movie.moviecountry
        self.movieawardslbl.text = movie.movieawards
        self.moviemetascore.text = movie.moviemetascore
        self.imdbratinglbl.text = movie.imdbrating
        self.imdbvoteslbl.text = movie.imdbvotes
        self.totalseasonslbl.text = movie.totalseasons
        self.boxofficelbl.text = movie.boxoffice
        self.productionlbl.text = movie.production
        if let url = URL(string: movie.posterimgurl){
        let data = try? Data(contentsOf: url)
        self.movieposterimg.image = UIImage(data: data!)
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
        return movie.type
        }
        else{
            return "rating"
        }
    }
    @IBAction func backbtntapped(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
    }
}

