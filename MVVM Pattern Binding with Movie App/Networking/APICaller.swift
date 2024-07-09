//
//  APICaller.swift
//  MVVM Pattern Binding with Movie App
//
//  Created by Fazlı Altun on 3.07.2024.
//

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
    case unknownError
}

public class APICaller {
    
    static func getTrendingMovies(completionHandler: @escaping(_ result: Result<TrendingMovie, NetworkError>) -> Void ) {
        
        let urlString = NetworkConstants.shared.serverAdress +
        "trending/all/day?api_key=" +
        NetworkConstants.shared.apiKey
        
        guard let url = URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if error == nil,
               let data = data,
               let result = try? JSONDecoder().decode(TrendingMovie.self, from: data) {
                completionHandler(.success(result))
            } else {
                completionHandler(.failure(.canNotParseData))
            }
        }.resume()
    }
}
