//
//  CommentsResponse.swift
//  Model
//
//  Created by 장공의 on 15/12/2018.
//  Copyright © 2018 zhanggoniui. All rights reserved.
//

import Foundation

struct CommentsResponse: Codable {
    var movie_id: String
    var comments: [CommentResponse]
}
