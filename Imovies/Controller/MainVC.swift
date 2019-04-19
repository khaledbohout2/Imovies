//
//  ViewController.swift
//  Imovies
//
//  Created by Khaled Bohout on 3/24/19.
//  Copyright © 2019 Khaled Bohout. All rights reserved.
//

import UIKit
import Alamofire

class MainVC: UIViewController {
    

    @IBOutlet weak var movienametextbox: UITextField!
    @IBOutlet weak var movieyeartextbox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func searchbtnTapped(_ sender: Any) {
        downloadmoviedata{}
 
    }
    
    @IBAction func resetbtnTapped(_ sender: Any) {
        movienametextbox.text = ""
        movieyeartextbox.text = ""
    }
    
    func downloadmoviedata(completed: @escaping downloadcomplete){
        
        let name = movienametextbox.text
        let year = movieyeartextbox.text
        
        if name == nil {
            
            let alertController = UIAlertController(title: "please Enter movie name", message: nil, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
        else {
           let downurl = "http://www.omdbapi.com/?apikey=9fbc9801&t=\(name!)&y=\(year!)"
            print("your download url is  \(downurl)")
            
            let encodedurl = downurl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            
            AF.request(encodedurl, method: .get).responseJSON { response in
                
                let result = response.result
                
                if let dict = result.value as? Dictionary<String,AnyObject>{
                     let response = dict["Response"] as? String
                    if response! == "True" {
                let movie = Movie(Dict: dict)
                self.performSegue(withIdentifier: "showtableviewvc", sender: movie)
                }
                    else if response! == "False" {
                        
                        let alertController = UIAlertController(title: "Some Thing is wrong .. please check movie name and consider spaces", message: nil, preferredStyle: .alert)
                        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                        self.present(alertController, animated: true, completion: nil)
                    }
                completed()
                }
            }
        
        }


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TableView{
            if let movie = sender as? Movie {
                destination.movie = movie
            }
        }
    }




}
