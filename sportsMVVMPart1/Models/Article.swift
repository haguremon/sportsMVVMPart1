//
//  Article.swift
//  sportsMVVMPart1
//
//  Created by IwasakIYuta on 2021/08/22.
//

import Foundation

struct Articles: Decodable {
    
    let articles: [Article]
    
}

struct Article: Decodable {
    
    let author: String?
    
    let title: String
    
    let description: String?
}
