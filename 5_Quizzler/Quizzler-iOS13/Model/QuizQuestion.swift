//
//  File.swift
//  Quizzler-iOS13
//
//  Created by Mia Ngo on 3/19/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizQuestion {
    var question : String
    var answer : String
    
    init (q: String, a: String) {
        question = q
        answer = a
    }
}
