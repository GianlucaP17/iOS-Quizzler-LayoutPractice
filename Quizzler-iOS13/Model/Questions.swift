//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by gianluca posca on 28/05/21.
//  Copyright © 2021 Gianluca Po. All rights reserved.
//

import Foundation
import UIKit

struct Questions {
    let text:String
    let answer:[String]
    let correctAnswer:String
    init(q:String,a:[String],correctAnswer:String) {
        text=q
        answer=a
        self.correctAnswer=correctAnswer
    }
}
