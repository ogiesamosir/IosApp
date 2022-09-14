//
//  PostListView.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 13/09/22.
//

import SwiftUI

struct PostListView: View {
    let posts: [Post]
    
    @State private var searchText: String = ""
    
    var filteredPosts : [Post]{
        if(searchText.count == 0){
            return posts
        }else{
            return posts.filter{
                $0.title.contains(searchText)
            }
        }
    }
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(filteredPosts){ post in
                    NavigationLink{
                        PostDetailView(post: post)
                    } label: {
                        PostRow(post: post)
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Posts")
            .searchable(text: $searchText)
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView(posts: PostFetcher.successState().posts)
    }
}
