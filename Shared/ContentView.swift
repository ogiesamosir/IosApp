//
//  ContentView.swift
//  Shared
//
//  Created by Puteri Grace on 13/09/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var postFetcher = PostFetcher()
    
    var body: some View {
        if(postFetcher.isLoading){
            LoadingView()
        }else if postFetcher.errorMessage != nil{
            ErrorView(postFetcher: postFetcher)
        }else{
            PostListView(posts: postFetcher.posts)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
