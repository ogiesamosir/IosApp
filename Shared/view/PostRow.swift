//
//  PostRow.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 14/09/22.
//

import SwiftUI

struct PostRow: View {
    let post : Post
    var body: some View {
        Text(post.title).font(.headline)
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: Post.example2())
            .previewLayout(.fixed(width: 300, height: 200))
    }
}
