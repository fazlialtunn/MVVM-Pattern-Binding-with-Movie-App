//
//  MainViewModel.swift
//  MVVM Pattern Binding with Movie App
//
//  Created by Fazlı Altun on 3.07.2024.
//

import Foundation


class MainViewModel {
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        10
    }
    
    func getData() {
        APICaller.getTrendingMovies { result in
            switch result {
            case .success(let movie):
                print("Trending movie count: \(movie.results.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
