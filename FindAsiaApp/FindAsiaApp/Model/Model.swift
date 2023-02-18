//
//  Model.swift
//  FindAsiaApp
//
//  Created by 近江伸一 on 2023/02/19.
//

import Foundation
struct Country {
    var id: Int
    var name: String
    var number: Int
    var article: String
    var image: String
    var scale: String
    init(id: Int, name: String, number: Int, article: String, image: String, scale: String) {
        self.id = id
        self.name = name
        self.number = number
        self.article = article
        self.image = image
        self.scale = scale
    }
}
