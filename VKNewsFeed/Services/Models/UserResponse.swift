//
//  UserResponse.swift
//  VKNewsFeed
//
//  Created by Алексей Пархоменко on 07/04/2019.
//  Copyright © 2019 Алексей Пархоменко. All rights reserved.
//

import Foundation

struct UserResponseWrapped: Decodable {
    let response: [UserResponse]
}

struct UserResponse: Decodable {
    let photo100: String?
}
