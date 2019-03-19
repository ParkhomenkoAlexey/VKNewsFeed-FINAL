//
//  NewsfeedPresenter.swift
//  VKNewsFeed
//
//  Created by Алексей Пархоменко on 15/03/2019.
//  Copyright (c) 2019 Алексей Пархоменко. All rights reserved.
//

import UIKit

protocol NewsfeedPresentationLogic {
  func presentData(response: Newsfeed.Model.Response.ResponseType)
}

class NewsfeedPresenter: NewsfeedPresentationLogic {
  weak var viewController: NewsfeedDisplayLogic?
  
  func presentData(response: Newsfeed.Model.Response.ResponseType) {
  
    switch response {
    case .some:
        print(".some Presenter")
        viewController?.displayData(viewModel: .displayNewsfeed)
    case .presentNewsfeed:
        print(".presentNewsfeed Presenter")
        viewController?.displayData(viewModel: .displayNewsfeed)
    }
  }
  
}
