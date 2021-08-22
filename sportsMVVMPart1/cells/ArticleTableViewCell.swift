//
//  ArticleTableViewCell.swift
//  sportsMVVMPart1
//
//  Created by IwasakIYuta on 2021/08/22.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    @IBOutlet weak var author: UILabel!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var descriptions: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
