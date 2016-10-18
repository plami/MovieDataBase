//
//  movieDetailsTableViewCell.swift
//  MovieDatabase
//
//  Created by macbook on 10/16/16.
//  Copyright © 2016 macbook. All rights reserved.
//

import UIKit

class movieDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblPlot: UILabel!
    @IBOutlet weak var lblActors: UILabel!
    @IBOutlet weak var lblAwards: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var lblWriter: UILabel!
    @IBOutlet weak var lblDirector: UILabel!
    @IBOutlet weak var lblRunTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
