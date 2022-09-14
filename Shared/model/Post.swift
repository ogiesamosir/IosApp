//
//  Post.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 13/09/22.
//

import Foundation


struct Post : CustomStringConvertible, Codable, Identifiable{
    let title: String
    let body:String
    let id:Int
    let user_id:Int
    
    var description: String{
        return "post with title \(title) and id \(id) , with user id \(user_id) and body \(body)"
    }
    
    
    enum CodingKeys : String, CodingKey{
        case id
        case title
        case body
        case user_id = "userId"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try values.decode(Int.self , forKey: .id)
        title = try values.decode(String.self , forKey: .title)
        body = try values.decode(String.self , forKey: .body)
        user_id = try values.decode(Int.self , forKey: .user_id)
    }
    
    init (title:String, id:Int , body:String, user_id:Int){
        self.body = body
        self.title = title
        self.id = id
        self.user_id = user_id
    }
    
    static func example1() -> Post{
        return Post(title: "Abcd", id: 1, body: "Example 1", user_id: 1)
    }
    
    static func example2() -> Post{
        return Post(title: "EFGH", id: 2, body: "Example 2", user_id: 2)
    }
}

