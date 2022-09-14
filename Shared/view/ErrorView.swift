//
//  ErrorView.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 13/09/22.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var postFetcher : PostFetcher
    var body: some View {
        VStack{
            Text("Error").font(.system(size: 50))
            
            Text(postFetcher.errorMessage ?? "")
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(postFetcher: PostFetcher())
    }
}
