//
//  GalleryCollectionViewCell.swift
//  VKNewsFeed
//
//  Created by Алексей Пархоменко on 03/04/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation
import  UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GalleryCollectionViewCell"
    
    let myImageView: WebImageView = {
       let imageView = WebImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    
        addSubview(myImageView)
        // myImageView constraints
        myImageView.fillSuperview()
    }
    
    override func prepareForReuse() {
        myImageView.image = nil
    }
    
    func set(imageUrl: String?) {
        myImageView.set(imageURL: imageUrl)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
