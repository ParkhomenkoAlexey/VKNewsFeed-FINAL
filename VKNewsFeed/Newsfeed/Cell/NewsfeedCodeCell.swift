//
//  NewsfeedCodeCell.swift
//  VKNewsFeed
//
//  Created by Алексей Пархоменко on 31/03/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation
import UIKit

final class NewsfeedCodeCell: UITableViewCell {
    
    static let reuseId = "NewsfeedCodeCell"
    
    // Первый слой
    let cardView: UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // Второй слой
    let topView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        return view
    }()
    
    let postlabel: UILabel = {
       let label = UILabel()
        label.numberOfLines = 0
        label.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        label.font = Constants.postLabelFont
        label.textColor = #colorLiteral(red: 0.227329582, green: 0.2323184013, blue: 0.2370472848, alpha: 1)
        return label
    }()
    
    let postImageView: WebImageView = {
        let imageView = WebImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.8901960784, green: 0.8980392157, blue: 0.9098039216, alpha: 1)
        return imageView
    }()
    
    let bottomView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        overlayFirstLayer() // первый слой
        overlaySecondLayer() // второй слой
    }
    
    func set(viewModel: FeedCellViewModel) {
        
        postlabel.frame = viewModel.sizes.postLabelFrame
        postImageView.frame = viewModel.sizes.attachmentFrame
        bottomView.frame = viewModel.sizes.bottomViewFrame
        
        if let photoAttachment = viewModel.photoAttachement {
            //postImageView.set(imageURL: photoAttachment.photoUrlString)
            postImageView.isHidden = false
        } else {
            postImageView.isHidden = true
        }
    }
    
    
    
    func overlaySecondLayer() {
        cardView.addSubview(topView)
        cardView.addSubview(postlabel)
        cardView.addSubview(postImageView)
        cardView.addSubview(bottomView)
        
        // topView constraints
        topView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8).isActive = true
        topView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -8).isActive = true
        topView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 8).isActive = true
        topView.heightAnchor.constraint(equalToConstant: Constants.topViewHeight).isActive = true

        
        // postlabel constraints
        
        // postImageView constraints
        
        // bottomView constraints
    }
    
    func overlayFirstLayer() {
        addSubview(cardView)
        
        // cardView constraints
        cardView.fillSuperview(padding: Constants.cardInsets)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
