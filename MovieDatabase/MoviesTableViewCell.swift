//
//  MoviesTableViewCell.swift
//  MovieDatabase
//
//  Created by macbook on 10/14/16.
//  Copyright © 2016 macbook. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var btnSelect: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
