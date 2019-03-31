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
    
    let cardView: UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        addSubview(cardView)
        
        // cardView constraints

//        cardView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
//        cardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant:  -12).isActive = true
//        cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  12).isActive = true
//        cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
//        cardView.fillSuperview(padding: UIEdgeInsets(top: 12, left: 12, bottom: 12, right: 12))
//        cardView.fillSuperview()
        
//        cardView.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
//        cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
//        cardView.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        cardView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        cardView.anchor(top: topAnchor,
                        leading: leadingAnchor,
                        bottom: nil,
                        trailing: nil,
                        padding: UIEdgeInsets(top: 8, left: 8, bottom: 777, right: 777),
                        size: CGSize(width: 40, height: 40))
        
//        cardView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
//        cardView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
//        cardView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        cardView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
//        cardView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        cardView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        cardView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        cardView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/2).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
