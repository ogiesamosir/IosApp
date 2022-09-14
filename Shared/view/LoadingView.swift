//
//  LoadingView.swift
//  ArunaList (iOS)
//
//  Created by Puteri Grace on 13/09/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Posts app").font(.system(size: 40))
            ProgressView()
            Text("Getting posts ...").foregroundColor(.gray)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
