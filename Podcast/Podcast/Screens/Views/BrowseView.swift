//
//  BrowseView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            List {
                FeaturedScrollView()
                    .listRowInsets(EdgeInsets())
            }
            .listStyle(PlainListStyle())
            .environment(\.defaultMinListRowHeight, 250)
            
        }
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
