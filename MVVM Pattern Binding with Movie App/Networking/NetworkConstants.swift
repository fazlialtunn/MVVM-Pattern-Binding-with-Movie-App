//
//  NetworkConstants.swift
//  MVVM Pattern Binding with Movie App
//
//  Created by Fazlı Altun on 3.07.2024.
//

import Foundation


class NetworkConstants {
    public static var shared = NetworkConstants()
    
    private init() {
        
    }
    
    public var apiKey: String {
        get {
            return "5c2f9ddcdc3d881285d6773355520c3f"
        }
    }
    
    public var serverAdress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    public var serverImageAddress: String {
        get {
            return "https://image.tmdb.org/t/p/w500/"
        }
    }
}
