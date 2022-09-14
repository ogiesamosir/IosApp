//
//  APIServiceProtocol.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 14/09/22.
//

import Foundation

protocol APIServiceProtocol{
    func fetchPost(url: URL?, completion: @escaping(Result<[Post] , APIError>) -> Void)
}
