//
//  APIError.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 14/09/22.
//

import Foundation

enum APIError : Error, CustomStringConvertible {
    case badURL
case badResponse(statusCode: Int)
    case url(URLError?)
    case parsing(DecodingError?)
    case unknown
    
    var localizedDescription :String{
        //user feedback
        switch self {
        case .badURL:
            return "Sorry, something went wrong"
        case .badResponse(_):
            return "Sorry, connection failed"
        case .url(let error):
            return error?.localizedDescription ?? "Something went wrong"
        case .parsing:
            return "Sorry, something went wrong"
        case .unknown:
            return "Sorry, something went wrong"
        }
    }
    
    var description: String{
        // info for debugging
        switch self {
        case .badURL:
            return "invalid url"
        case .badResponse(statusCode : let statusCode):
            return "bad response with status code : \(statusCode)"
        case .url(let error):
            return error?.localizedDescription ?? "url session error"
        case .parsing(let error):
            return "parsing error \(error?.localizedDescription ?? "")"
        case .unknown:
            return "unknown error"
        }
    }
}
