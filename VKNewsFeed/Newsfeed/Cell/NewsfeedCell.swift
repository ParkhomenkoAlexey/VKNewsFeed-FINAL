//
//  NewsfeedCell.swift
//  VKNewsFeed
//
//  Created by Алексей Пархоменко on 19/03/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation
import UIKit

class NewsfeedCell: UITableViewCell {
    
    static let reuseId = "NewsfeedCell"
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postlabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var shareslabel: UILabel!
    @IBOutlet weak var viewsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
