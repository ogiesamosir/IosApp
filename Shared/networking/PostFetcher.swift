//
//  PostFetcher.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 13/09/22.
//

import Foundation

class PostFetcher : ObservableObject{
    
    @Published var posts = [Post]()
    @Published var isLoading: Bool = false
    @Published var errorMessage : String? = nil
    
    let service:APIServiceProtocol
    
    init(service : APIServiceProtocol = APIService()){
        self.service = service
        fetchAllPosts()
    }
    
    func fetchAllPosts(){
        
        isLoading = true
        errorMessage = nil
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        service.fetchPost(url: url) {[unowned self] result in
            DispatchQueue.main.async {
            self.isLoading = false
            switch result{
            case .failure(let error):
                self.errorMessage = error.localizedDescription
            case .success(let posts):
                self.posts = posts
            }
            }
        }
       
    }
    
    static func errorState() -> PostFetcher{
        let fetcher = PostFetcher()
        fetcher.errorMessage = APIError.url(URLError.init(.notConnectedToInternet)).localizedDescription
        return fetcher
    }
    
    static func successState() -> PostFetcher{
        let fetcher = PostFetcher()
        fetcher.posts = [Post.example1(), Post.example2()]
        return fetcher
    }
}
