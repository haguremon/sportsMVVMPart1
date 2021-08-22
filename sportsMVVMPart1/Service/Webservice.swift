//
//  Webservice.swift
//  sportsMVVMPart1
//
//  Created by IwasakIYuta on 2021/08/22.
//

import Foundation

class  WebService {
    
    func getarticles(url: URL , completion: @escaping ([Article]?) -> ()) {
                                           
        URLSession.shared.dataTask(with: url) { data, response, error in

            guard let data = data ,
                  
                  error == nil else { return }

            let article = try? JSONDecoder().decode(Articles.self, from: data)
//なぜか　guard letでやるとエラーが出る
            if let article = article {
                
                print(article.articles)
                completion(article.articles)
            
            }
            print(article?.articles)



        } .resume()


    }

}
