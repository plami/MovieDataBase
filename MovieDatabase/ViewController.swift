//
//  ViewController.swift
//  MovieDatabase
//
//  Created by macbook on 10/14/16.
//  Copyright © 2016 macbook. All rights reserved.
//

import UIKit
import Alamofire
import Haneke

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UIPopoverPresentationControllerDelegate, UISearchBarDelegate  {

    @IBOutlet weak var tableViewMovies: UITableView!
    
    private var dpShowVisible = false
    var numberOfRows = 3
    var numberSections = 1
    
    lazy var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 120, height: 20))
    var txtSearchBar: String?
    
    let baseURLString: String = "http://www.omdbapi.com/?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUplabelsAndButtons()
        self.registerCustomCell()
        self.registerDetailsCell()
        
        tableViewMovies.dataSource = self
        tableViewMovies.delegate = self
        searchBar.delegate = self
     
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    //MARK: - Networking
    
    func loadData () {
        
        let defaults = UserDefaults.standard
        let film = defaults.object(forKey: "searchFilm") as! String?
        let year = defaults.object(forKey: "selectedYear") as! String?
        print(film!)
        print(year!)
        
        Alamofire.request(baseURLString + "t=\(film!)" + "&y=\(year!)", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
            
            if let result = response.result.value {
                let movie = Movie(json: result as! Dictionary<String, AnyObject>)
//                print(result)
//                print(movie.name!)
//                print(movie.year!)
//                print(movie.poster!)
//                print(movie.genre!)
                
                let defaults = UserDefaults.standard
                defaults.set(movie.name, forKey: "filmName")
                defaults.set(movie.year, forKey: "filmYear")
                defaults.set(movie.genre, forKey: "filmGenre")
                
                defaults.set(movie.actors, forKey: "filmActors")
                defaults.set(movie.awards, forKey: "filmAwards")
                defaults.set(movie.country, forKey: "filmCountry")
                defaults.set(movie.director, forKey: "filmDirector")
                defaults.set(movie.plot, forKey: "filmPlot")
                defaults.set(movie.runTime, forKey: "filmRunTime")
                defaults.set(movie.writer, forKey: "filmWriter")

                let cache = Shared.imageCache
                let URL = NSURL(string: movie.poster)!
                let fetcher = NetworkFetcher<UIImage>(URL: URL as URL)
                cache.fetch(fetcher: fetcher).onSuccess { image in
                    print(image)
                    let defaults = UserDefaults.standard
                    defaults.set(UIImagePNGRepresentation(image), forKey: "filmImage")                }
            }
        }
    }
    
    //create dropdown cell on click of film cell
    private func toggleMovieCell () {
        dpShowVisible = !dpShowVisible
        
        tableViewMovies.beginUpdates()
        tableViewMovies.endUpdates()
    }
    
    
    //Search bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("searchText \(searchText)")
        txtSearchBar = searchText
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("searchText \(searchBar.text)")
    }
    
    //MARK: - TableView methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let height = 90;
        
        if !dpShowVisible && indexPath.section == 0 && indexPath.row == 2 {
            return 0
        }
        if dpShowVisible && indexPath.section == 0 && indexPath.row == 2 {
            return 250
        }
        else {
        }
        
        return CGFloat(height)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.numberSections
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //the main runloop is awaken, because it has been asleep -> which is causing the view to be opened on 2nd tap on the tableViewCell
        CFRunLoopWakeUp(CFRunLoopGetCurrent());
        
        if indexPath.row == 0{
            
            let cell:MovieTableViewCell = self.tableViewMovies.dequeueReusableCell(withIdentifier: "movieCell")! as! MovieTableViewCell
            
        let defaults = UserDefaults.standard
            
         if(UserDefaults.standard.object(forKey: "filmImage") != nil && UserDefaults.standard.object(forKey: "filmName") != nil && UserDefaults.standard.object(forKey: "filmYear") != nil && UserDefaults.standard.object(forKey: "filmGenre") != nil) {
            
            let image = defaults.object(forKey: "filmImage") as! NSData
            
            var filmImage : UIImage = UIImage(data: image as Data)!
            filmImage = filmImage.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
            
            let name = defaults.object(forKey: "filmName")
            let year = defaults.object(forKey: "filmYear")
            let genre = defaults.object(forKey: "filmGenre")
            
            cell.lblTitle.text = name as! String?
            cell.lblYear.text = year as! String?
            cell.lblGenre.text = genre as! String?
            cell.imgMovie.image = filmImage
         } else {
            }
            return cell
            
        }
        if indexPath.row == 1 {
          let cell:movieDetailsTableViewCell = self.tableViewMovies.dequeueReusableCell(withIdentifier: "movieDetailsCell")! as! movieDetailsTableViewCell
            
            let defaults = UserDefaults.standard
            
            if(UserDefaults.standard.object(forKey: "filmActors") != nil && UserDefaults.standard.object(forKey: "filmAwards") != nil && UserDefaults.standard.object(forKey: "filmCountry") != nil && UserDefaults.standard.object(forKey: "filmDirector") != nil && UserDefaults.standard.object(forKey: "filmPlot") != nil && UserDefaults.standard.object(forKey: "filmRunTime") != nil && UserDefaults.standard.object(forKey: "filmWriter") != nil) {
            
            let actors = defaults.object(forKey: "filmActors")
            let awards = defaults.object(forKey: "filmAwards")
            let country = defaults.object(forKey: "filmCountry")
            let director = defaults.object(forKey: "filmDirector")
            let plot = defaults.object(forKey: "filmPlot")
            let runTime = defaults.object(forKey: "filmRunTime")
            let writer = defaults.object(forKey: "filmWriter")
            
            cell.lblActors.text = actors as! String?
            cell.lblAwards.text = awards as! String?
            cell.lblCountry.text = country as! String?
            cell.lblDirector.text = director as! String?
            cell.lblPlot.text = plot as! String?
            cell.lblRunTime.text = runTime as! String?
            cell.lblWriter.text = writer as! String?
            } else {
                
            }
            
            return cell
        } else {
          let cell:MovieTableViewCell = self.tableViewMovies.dequeueReusableCell(withIdentifier: "movieCell")! as! MovieTableViewCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            print("test")
            toggleMovieCell()
        }
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 1{
        }
    }
    
    // register custom cell
    func registerCustomCell() {
        
        let nib = UINib(nibName: "MovieTableViewCell", bundle: nil)
        tableViewMovies.register(nib, forCellReuseIdentifier: "movieCell")
    }
    
    func registerDetailsCell() {
        
        let nib = UINib(nibName: "movieDetailsTableViewCell", bundle: nil)
        tableViewMovies.register(nib, forCellReuseIdentifier: "movieDetailsCell")
    }
    
    //Buttons in Navigation Bar
    
    func didTapFilmsButton(_ sender:UIBarButtonItem) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PopoverViewController")
        vc.modalPresentationStyle = UIModalPresentationStyle.popover
        let popover: UIPopoverPresentationController = vc.popoverPresentationController!
        popover.barButtonItem = sender
        popover.delegate = self
        present(vc, animated: true, completion:nil)
    }
    
    func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        let navigationController = UINavigationController(rootViewController: controller.presentedViewController)
        let btnDone = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(ViewController.dismiss as (ViewController) -> () -> ()) as Selector?)
        navigationController.topViewController?.navigationItem.rightBarButtonItem = btnDone
        navigationController.navigationBar.backgroundColor = UIColor.darkGray
        btnDone.tintColor = UIColor.white
        return navigationController
    }
    
    func didTapSearchButton(_ sender:UIBarButtonItem) {
        let defaults = UserDefaults.standard
        defaults.set(self.txtSearchBar, forKey: "searchFilm")
        
        self.loadData()
        tableViewMovies.reloadData()
        
    }
    
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Controls
    
    //Calls this function when the tap is recognized - dismiss keyboard
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func setUplabelsAndButtons(){
       
        navigationController?.navigationBar.barTintColor = UIColor.lightGray
        navigationController?.navigationBar.tintColor = UIColor.white
        
        searchBar.placeholder = "Type Movie"
        let leftNavBarButton = UIBarButtonItem(customView:searchBar)
        self.navigationItem.leftBarButtonItem = leftNavBarButton
        
        let filmsImage = UIImage(named: "Films")!
        let searchImage = UIImage(named: "Search")!
        
        let filmsButton  = UIBarButtonItem(image: filmsImage,  style: .plain, target: self, action: #selector(ViewController.didTapFilmsButton(_:)))
        
        let searchButton  = UIBarButtonItem(image: searchImage,  style: .plain, target: self, action: #selector(ViewController.didTapSearchButton(_:)))
        
        navigationItem.rightBarButtonItems = [searchButton, filmsButton]
        self.navigationItem.title = "Movies"
        // Status bar white font
        navigationController?.navigationBar.barStyle = UIBarStyle.black
        navigationController?.navigationBar.tintColor = UIColor.white
    }
}

