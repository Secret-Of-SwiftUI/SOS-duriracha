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
                    .padding(.bottom, 25)
                
                RecentScrollView()
                    .listRowInsets(EdgeInsets())
                
                FeaturedChannelsScrollView()
                    .listRowInsets(EdgeInsets())
                
                TopEpisodesView()
                    .listRowInsets(EdgeInsets())
            }
            .listStyle(PlainListStyle())
            .environment(\.defaultMinListRowHeight, 300)
            
            VStack {
                Spacer()
                
                PlayingView()
            }
        }
        .navigationTitle("Browse")
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
