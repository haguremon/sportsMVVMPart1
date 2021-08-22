//
//  ArticleViewModels.swift
//  sportsMVVMPart1
//
//  Created by IwasakIYuta on 2021/08/22.
//
//　VMで記事を取得してViewに貼り付ける作業をする

import Foundation

//複数の記事を持ってるVMとテーブルに表示するための機能も追加する

struct ArticlesViewModel {
    
    var articles: [Article]
    
}
//テーブルに表示するための機能を拡張
extension ArticlesViewModel {
    
    var numberOfSections: Int {
        
        1
        
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        
        self.articles.count
        
    }
    
    func  articleForRowAt(_ index: Int) -> ArticleViewModel {
        
        return ArticleViewModel(articles[index])
    }
    
    
}





//一つの記事を作成する
struct ArticleViewModel {
    
    private var article:  Article
    
}

extension ArticleViewModel {
    
    init(_ article:  Article ) {
        self.article = article
    }
    
}

extension ArticleViewModel {
    
    var author: String {
        
        if let author = self.article.author {
            
            return author
        }
        
        return ""
    }
    
    var title: String {
        
        let title = self.article.title
        
        return title
        
    }
    
    var description: String {
        
        if let description = self.article.description {
            
            return description
        }
        
        return ""
    }
    
}
