//
//  BrowseView.swift
//  Podcast
//
//  Created by SHIN YOON AH on 2022/04/19.
//

import SwiftUI

struct BrowseView: View {
    
    // MARK: - property
    
    @State var presentingModal = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            List {
                FeaturedScrollView()
                    .listRowInsets(EdgeInsets())
                    .padding(.bottom, 25)
                    .listRowSeparator(.hidden)
                    .frame(height: 310)
                
                RecentScrollView()
                    .listRowInsets(EdgeInsets())
                    .fixedSize(horizontal: false, vertical: true)
                
                FeaturedChannelsScrollView()
                    .listRowInsets(EdgeInsets())
                    .fixedSize(horizontal: false, vertical: true)
                
                TopEpisodesView()
                    .listRowInsets(EdgeInsets())
                    .frame(height: 330)
                
                Spacer()
            }
            .listStyle(PlainListStyle())
            
            VStack {
                Spacer()
                
                PlayingView()
                    .onTapGesture {
                        self.presentingModal = true
                    }
                    .sheet(isPresented: $presentingModal) { PlayerView(presentedAsModal: self.$presentingModal) }
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
