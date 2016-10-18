//
//  PopoverViewController.swift
//  MovieDatabase
//
//  Created by macbook on 10/14/16.
//  Copyright © 2016 macbook. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UIPopoverPresentationControllerDelegate {

    @IBOutlet weak var tableViewMovies: UITableView!
    
    var selectedYear: String!
    var heightRows = 50
    var numberSections = 1
    
    var arrayYears = ["1980", "1981", "1982", "1983","1984","1985","1986","1987","1988","1989","1990","1991","1992","1993","1994","1995","1996","1997","1998","1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2013","2014","2015","2016"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMovies.delegate = self
        tableViewMovies.dataSource = self
        self.registerCustomCell()

    }

    //MARK: - TableView methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayYears.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(self.heightRows)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.numberSections
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:MoviesTableViewCell = self.tableViewMovies.dequeueReusableCell(withIdentifier: "yearsCell")! as! MoviesTableViewCell
        cell.lblYear.text = arrayYears[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 1{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 2{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 3{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 3{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 4{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 5{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 6{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 7{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 8{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 9{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 10{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 11{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 12{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 13{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 14{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 15{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 16{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 16{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 17{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 18{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 19{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 20{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 21{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 22{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 23{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 24{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 25{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 26{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 27{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 28{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            print(selectedYear)
        }
        if indexPath.row == 29{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 30{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 31{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 32{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 33{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 34{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 35{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 36{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
        if indexPath.row == 37{
            let indexPath = tableView.indexPathForSelectedRow //optional, to get from any UIButton for example
            let currentCell = tableView.cellForRow(at: indexPath!)! as! MoviesTableViewCell
            selectedYear = currentCell.lblYear!.text!
            let defaults = UserDefaults.standard
            defaults.set(selectedYear, forKey: "selectedYear")
            
            print(selectedYear)
        }
    }
    
    // register custom cell
    func registerCustomCell() {
        
        let nib = UINib(nibName: "MoviesTableViewCell", bundle: nil)
        tableViewMovies.register(nib, forCellReuseIdentifier: "yearsCell")
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.fullScreen
    }
}
