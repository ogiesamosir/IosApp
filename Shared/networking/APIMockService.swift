//
//  APIMockService.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 14/09/22.
//

import Foundation

struct APIMockService : APIServiceProtocol {
    var result: Result<[Post],APIError >
    
    func fetchPost(url: URL?, completion: @escaping (Result<[Post], APIError>) -> Void) {
        completion(Result.success([Post.example1()]))
    }
    
    
}
