//
//  MovieTableCell.swift
//  BoostCamp
//
//  Created by 장공의 on 16/12/2018.
//  Copyright © 2018 zhanggoniui. All rights reserved.
//

import UIKit
import Common

class MovieTableCell: UITableViewCell {
    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var userRating: UILabel!
    @IBOutlet weak var reservationGrade: UILabel!
    @IBOutlet weak var reservationRating: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    
    public func setMovie(movie: Movie) {
        guard let url = URL(string: movie.thumb) else {
            return
        }
        
        poster.downloaded(from: url)
        title.text = movie.title
        userRating.text = movie.user_rating
        reservationGrade.text = movie.reservation_grade
        reservationRating.text = movie.reservation_rate
        releaseDate.text = movie.date
    }
}
