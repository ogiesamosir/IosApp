//
//  PostDetailView.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 14/09/22.
//

import SwiftUI

struct PostDetailView: View {
    let post : Post
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(post.title).font(.headline)
            Text(post.body).font(.subheadline)
            Spacer()
        }.padding()
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PostDetailView(post: Post.example2())
    }
}
